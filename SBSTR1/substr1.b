There are 24 test cases: loop from 24 to 0
>>++++ +++++ +++++ +++++ +++++
[
  >

  %%
  %% Read test case from stdin
  %%

  Read string A (length 10) and convert its ascii chars to integers
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>

  , Comsume the space between strings A and B

  Read sub string B (length 5) and convert its ascii chars to integers
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>
  ,>+++++[<---------->-]<++>


  %%
  %% Create copies of sub string B and update them using string A to find out
  %% if B is a substring of A:
  %%   * Create six copies of B corresponding to the six different positions
  %%     in which B may be present in A;
  %%   * For each character c in A:
  %%     * If c is 1: go to its corresponding characters in the substring
  %%       copies and set them to 0;
  %%     * Otherwise do nothing
  %%
  %% At the end we can say that B is a substring of A if any of its six copies
  %% is completely made up of 0s! 
  %%

  Make six copies of sub string B
  <<<<<
  [>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>
  [>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>
  [>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>
  [>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>
  [>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+>>>>>>+<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<-]>

  <<<<<<<<<<<<<<< go to the beginning of string A

  Process A(0)
  [>>>>>>>>>>>>>>[-]+>
    B_0(0): [[-]<    -    >]<    [    >[-]+<    -]    > <
  <<<<<<<<<<<<<<-]>

  Process A(1)
  [>>>>>>>>>>>>>[-]+>>
    B_0(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> >>>>[-]+>
    B_1(0): [[-]<    -    >]<    [    >[-]+<    -]    > < <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(2)
  [>>>>>>>>>>>>[-]+>>>
    B_0(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> >>>[-]+>>
    B_1(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> >>>>[-]+>
    B_2(0): [[-]<    -    >]<    [    >[-]+<    -]    > < <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(3)
  [>>>>>>>>>>>[-]+>>>>
    B_0(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> >>[-]+>>>
    B_1(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> >>>[-]+>>
    B_2(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> >>>>[-]+>
    B_3(0): [[-]<    -    >]<    [    >[-]+<    -]    > < <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(4)
  [>>>>>>>>>>[-]+>>>>>
    B_0(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> >[-]+>>>>
    B_1(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> >>[-]+>>>
    B_2(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> >>>[-]+>>
    B_3(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> >>>>[-]+>
    B_4(0): [[-]<    -    >]<    [    >[-]+<    -]    > < <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(5)
  [>>>>>>>>>> >>>>> [-]+>>>>>
    B_1(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> >[-]+>>>>
    B_2(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> >>[-]+>>>
    B_3(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> >>>[-]+>>
    B_4(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> >>>>[-]+>
    B_5(0): [[-]<    -    >]<    [    >[-]+<    -]    > < <<<<< <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(6)
  [>>>>>>>>>> >>>>> >>>>> [-]+>>>>>
    B_2(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> >[-]+>>>>
    B_3(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> >>[-]+>>>
    B_4(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> >>>[-]+>>
    B_5(1): [[-]<<   -   >>]<<   [   >>[-]+<<   -]   >> < <<<<< <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(7)
  [>>>>>>>>>> >>>>> >>>>> >>>>> [-]+>>>>>
    B_3(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> >[-]+>>>>
    B_4(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> >>[-]+>>>
    B_5(2): [[-]<<<  -  >>>]<<<  [  >>>[-]+<<<  -]  >>> < <<<<< <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(8)
  [>>>>>>>>>> >>>>> >>>>> >>>>> >>>>> [-]+>>>>>
    B_4(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> >[-]+>>>>
    B_5(3): [[-]<<<< - >>>>]<<<< [ >>>>[-]+<<<< -] >>>> < <<<<< <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>

  Process A(9)
  [>>>>>>>>>> >>>>> >>>>> >>>>> >>>>> >>>>>[-]+>>>>>
    B_5(4): [[-]<<<<<->>>>>]<<<<<[>>>>>[-]+<<<<<-]>>>>> < <<<<< <<<<< <<<<< <<<<< <<<<<
  <<<<<<<<<<<<<<-]>


  Test the six copies of substring B to determine if B is a substring of A

  >>>[-]              found = false

  Test 1st substring copy
  >[-]+               tmp_found = true
  >[- <    [-]    >]  if B(0): tmp_found = false
  >[- <<   [-]   >>]  if B(1): tmp_found = false
  >[- <<<  [-]  >>>]  if B(2): tmp_found = false
  >[- <<<< [-] >>>>]  if B(3): tmp_found = false
  >[- <<<<<[-]>>>>>]  if B(4): tmp_found = falsse
  <<<<< [<[-]+>-]     if tmp_found: found = true

  Test 2nd substring copy
  >>>>>>[-]+
  >[- <    [-]    >]
  >[- <<   [-]   >>]
  >[- <<<  [-]  >>>]
  >[- <<<< [-] >>>>]
  >[- <<<<<[-]>>>>>]
  <<<<< [<<<<<< <[-]+> >>>>>>-]

  Test 3rd substring copy
  >>>>>>[-]+
  >[- <    [-]    >]
  >[- <<   [-]   >>]
  >[- <<<  [-]  >>>]
  >[- <<<< [-] >>>>]
  >[- <<<<<[-]>>>>>]
  <<<<< [<<<<<< <<<<<< <[-]+> >>>>>> >>>>>>-]

  Test 4th substring copy
  >>>>>>[-]+
  >[- <    [-]    >]
  >[- <<   [-]   >>]
  >[- <<<  [-]  >>>]
  >[- <<<< [-] >>>>]
  >[- <<<<<[-]>>>>>]
  <<<<< [<<<<<< <<<<<< <<<<<< <[-]+> >>>>>> >>>>>> >>>>>>-]

  Test 5th substring copy
  >>>>>>[-]+
  >[- <    [-]    >]
  >[- <<   [-]   >>]
  >[- <<<  [-]  >>>]
  >[- <<<< [-] >>>>]
  >[- <<<<<[-]>>>>>]
  <<<<< [<<<<<< <<<<<< <<<<<< <<<<<< <[-]+> >>>>>> >>>>>> >>>>>> >>>>>>-]

  Test 6th substring copy
  >>>>>>[-]+
  >[- <    [-]    >]
  >[- <<   [-]   >>]
  >[- <<<  [-]  >>>]
  >[- <<<< [-] >>>>]
  >[- <<<<<[-]>>>>>]
  <<<<< [<<<<<< <<<<<< <<<<<< <<<<<< <<<<<< <[-]+> >>>>>> >>>>>> >>>>>> >>>>>> >>>>>>-]

  %%
  %% Output the result for the current test case
  %%

  Print variable found by adding ascii '0' and then print a '\n'
  <<<<<< <<<<<< <<<<<< <<<<<< <<<<<< <
  <++++[>++++++++++<-]>++++++++.
  [-]++++++++++.[-]

  Reset data for next test case and consume '\n' from stdin
  <<<<<<<<<<<<<
  <-[-<<+>>]<<[->+>+<<]>[<[-]+>-]<[,[-]]>>
]