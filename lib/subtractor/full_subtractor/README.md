### Full Subtractor

```v
full_subtractor(input A, B, Bi, output Bo, D);
```

![RTL_View](./assets/RTL_view.png)
![Alt text](./assets/Symbol.png)

#### Other implementations

```v
module s_full_subtractor(input A, B, Bi, output D, Bo);
  assign D = A ^ B ^ Bi;
  assign Bo = (~A & B) | (~(A ^ B) & Bi);
endmodule
```

<!-- ![S-Full adder](./assets/s_RTL_view.png) -->

```v
module v_full_subtractor(input A, B, Bi, output D, Bo);
  assign {Bo, D} = A - B - Bi;
endmodule
```

<!-- ![V-Full adder](./assets/v_RTL_view.png) -->
