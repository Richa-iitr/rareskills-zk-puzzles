pragma circom 2.1.4;

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.

template Equality() {
   // Your Code Here..
   signal input a[3];
   signal output c;
   signal inter1;
   signal inter2;
   inter1 <-- a[0] == a[1] ? 1 : 0;
   inter2 <-- a[1] == a[2] ? 1 : 0;
   signal inter3;
   inter3 <-- inter1 && inter2;
   c <== inter3;
}

component main = Equality();