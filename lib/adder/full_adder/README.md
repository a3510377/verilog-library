### Full Adder

```v
full_adder(input A, B, Ci, output Co, S)
```

![RTL_View](./assets/RTL_view.png)
![Symbol](./assets/Symbol.png)

### Other logic full adder

```v
module s_full_adder(input A, B, Ci, output Co, S);
  assign S = A ^ B ^ Ci;
  assign Co = (A & B) | ((A ^ B) & Ci);
endmodule
```

![S-Full adder](assets/s_RTL_view.png)

> Verilog special syntax

```v
module v_full_adder(input A, B, Ci, output Co, S);
  assign {Co, S} = A + B + Ci;
endmodule
```

![V-Full adder](assets/v_RTL_view.png)
