from pathlib import Path
import shutil

import markdown


ROOT_DIR = Path()
BASE_DIR = ROOT_DIR / "lib"
OUT_DIR = ROOT_DIR / "out"
SCRIPTS_DIR = ROOT_DIR / "scripts"

if OUT_DIR.is_dir():
    shutil.rmtree(OUT_DIR)
OUT_DIR.mkdir()

infos: list[str] = []
for dir_path in BASE_DIR.iterdir():
    for path in dir_path.iterdir():
        info = ""

        # read README
        if (info_file := path / "README.md").is_file():
            info = info_file.read_text()

        # summon assets files
        assets_dir = path / "assets"
        if assets_dir.is_dir():
            basename = f"{dir_path.name}_{path.name}_"
            for asset_file in assets_dir.iterdir():
                filename = asset_file.relative_to(assets_dir)
                tmp = f"assets/{basename}{filename}"
                out_path = OUT_DIR / tmp
                info = info.replace(f"./assets/{filename}", tmp)
                out_path.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy(asset_file, out_path)

        for file in [*path.glob("*.bsf"), *path.glob("*.v")]:
            if (OUT_DIR / file.name).is_file():
                print(f"[WARNING] Skipping file {file.name!r}, file is already")
            shutil.copy(file, OUT_DIR)

        infos.append(info)

html_template = (SCRIPTS_DIR / "README.template.html").read_text()
md_template = (SCRIPTS_DIR / "README.template.md").read_text()
readme = md_template.format(CONTENT="\n".join(infos))
(OUT_DIR / "README.md").write_text(readme)
(OUT_DIR / "README.html").write_text(
    html_template.replace(
        "{{CONTENT}}",
        markdown.markdown(
            readme,
            exts=[
                "markdown.extensions.extra",
                "markdown.extensions.codehilite",
                "markdown.extensions.tables",
                "markdown.extensions.toc",
            ],
        ),
    )
)
