FUNCTION_BLOCK timer
VAR_EXTERNAL

END_VAR

VAR_INPUT
period : time;
END_VAR

VAR_OUTPUT
	output : bool;
END_VAR

VAR
	clock : TON;
END_VAR


clock(IN := true, PT := period);

if (clock.q) then
	output := not output;
	clock (in:= false);
end_if;


END_FUNCTION_BLOCK