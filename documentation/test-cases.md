# Test Cases

## Addition

| Description                                         | Input           | Expected Result | Status |
|-----------------------------------------------------|-----------------|-----------------|--------|
| Verify addition of two positive numbers             | add 3 5         | 8               | Pass   |
| Verify addition of a positive and a negative number | add 1 \-3       | \-2             | Pass   |
| Verify addition of two floating\-point numbers      | add 1\.1 \-3\.7 | \-2\.6          | Pass   |
| Verify addition of two negative numbers             | add \-2 \-1     | \-3             | Pass   |

## Subtraction

| Description                                            | Input              | Expected Result | Status |
|--------------------------------------------------------|--------------------|-----------------|--------|
| Verify subtraction of two positive numbers             | subtract 10 5      | 5               | Pass   |
| Verify subtraction resulting in a negative number      | subtract 10 15     | \-5             | Pass   |
| Verify subtraction of two floating\-point numbers      | subtract 2\.5 1\.1 | 1\.4            | Pass   |
| Verify subtraction of two negative numbers             | subtract \-2 \-1   | \-1             | Pass   |
| Verify subtraction of a positive and a negative number | subtract \-2 5     | 7               | Pass   |

## Multiplication

| Description                                               | Input              | Expected Result | Status |
|-----------------------------------------------------------|--------------------|-----------------|--------|
| Verify multiplication of two positive numbers             | multiply 5 2       | 10              | Pass   |
| Verify multiplication of a positive and a negative number | multiply 5 \-2     | \-10            | Pass   |
| Verify multiplication of two floating\-point numbers      | multiply 0\.5 0\.5 | 0\.25           | Pass   |
| Verify multiplication of two negative numbers             | multiply \-2 \-5   | 10              | Pass   |
| Verify multiplication with zero                           | multiply 0 5       | 0               | Pass   |

## Division

| Description                                         | Input            | Expected Result              | Status |
|-----------------------------------------------------|------------------|------------------------------|--------|
| Verify division of two positive numbers             | divide 10 2      | 5                            | Pass   |
| Verify division of a positive and a negative number | divide 5 \-2     | \-2\.5                       | Pass   |
| Verify division of two floating\-point numbers      | divide 4\.4 2\.2 | 2                            | Pass   |
| Verify division by zero                             | divide 2 0       | Error: Cannot divide by zero | Pass   |

## Edge Cases

| Description                                                              | Input                   | Expected Result                              | Status |
|--------------------------------------------------------------------------|-------------------------|----------------------------------------------|--------|
| Verify addition with large numbers                                       | add 999999999 999999999 | 1999999998                                   | Pass   |
| Verify addition with small numbers                                       | add \.00000001 2        | 2\.00000001                                  | Pass   |
| Verify addition with scientific notation                                 | add a 5                 | Invalid argument\. Must be a numeric value\. | Pass   |
| Verify invalid operation                                                 | add 2e2 5               | 205                                          | Pass   |
| Check addition when the parameter digits add up to 42                    | add 99996 0             | 99996                                        | Fail   |
| Check subtraction when the parameter digits add up to 42                 | subtract 0 99996        | \-99996                                      | Fail   |
| Check multiply when the parameter digits add up to 42 and the other is 1 | multiply 96999 1        | 96999                                        | Fail   |
| Check division when the parameter digits add up to 42 and the other is 1 | divide 888882 1         | 888882                                       | Fail   |

