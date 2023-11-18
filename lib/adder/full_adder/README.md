### Full Adder

```v
full_adder(input A, B, Ci, output Co, S)
```

![RTL_View](./assets/RTL_view.png)
![Symbol](./assets/Symbol.png)

> Equivalent module:

```v
module full_adder(input A, B, Ci, output Co, S);
  assign S = A ^ B ^ Ci;
  assign Co = (A & B) | ((A ^ B) & Ci);
endmodule
```

```v
module full_adder(input A, B, Ci, output Co, S);
  assign {Co, S} = A + B + Ci;
endmodule
```
