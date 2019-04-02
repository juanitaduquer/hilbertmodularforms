
/*
// TODO: narrow>1
intrinsic CuspFormBasis(M::ModFrmHilD, N::RngOrdIdl, k::SeqEnum[RngIntElt]) -> SeqEnum[ModFrmHilDElt], RngIntElt 
   {returns a basis for M of weight k} 
   prec := Precision(M); 
   F := BaseField(M); 
   ideals := Ideals(M); 
   dict := Dictionary(M); 
   set_ideals := Keys(dict); 
   zero_coeffs := [0 : i in [1..#ideals]]; 
   basis := []; 
   newforms_dimension := 0; 
   //TODO should we sieve? 
   for dd in Divisors(N) do 
   	basis := []; 
    orbit_representatives := NewformsToHMF(M, N, k); 
    orbits := [GaloisOrbitDescent(elt) : elt in orbit_representatives]; 
    old_space_basis := &cat orbits; 
    old_space_coeffs := [Coefficients(elt) : elt in old_space_basis]; 
    for ee in Divisors(N/dd) do 
    	new_coeffs_ee := [ zero_coeffs : i in [1..#old_space_basis]]; 
        for i := 1 to #ideals do 
           Iee := ideals[i]*ee; 
           if Iee in set_ideals then 
           	Iee_cord := dict[Iee]; 
           for j := 1 to #old_space_basis do 
             new_coeffs_ee[j][Iee_cord] := old_space_coeffs[j][i]; 
           end for; 
         else 
         //this assumes ideals are sorted by norm!! 
           break i; 
        end if; 
       end for; 
       basis := basis cat [HMF(M, N, k, elt) : elt in new_coeffs_ee]; 
     end for; 
     if dd eq N then 
       if #orbits eq 0 then 
         newforms_dimension := 0; 
       else 
         newforms_dimension := &+[ #orbit : orbit in orbits]; 
       end if; 
     end if; 
   end for; 
   return basis, newforms_dimension; 
end intrinsic; 
*/

// TODO: narrow>1
/* intrinsic Basis(M::ModFrmHilD, N::RngOrdIdl, k::SeqEnum[RngIntElt]) -> SeqEnum[ModFrmHilDElt], RngIntElt */
/*   { returns a Basis for the space } */
/*   CB, newforms_dimension := CuspFormBasis(M, N, k); */
/*   H := HeckeCharacterGroup(N); */
/*   //FIXME this is wrong for level not 1! */
/*   //print "FIXME this is wrong for level not 1!"; */
/*   eta := H ! 1; */
/*   // psi := H ! 1; */
/*   psi := eta; */
/*   E := EisensteinSeries(M, N, eta, psi, k); */
/*   return [E] cat CB, newforms_dimension; */
/* end intrinsic; */


/* intrinsic GaloisInvariantBasis(M::ModFrmHilD, N::RngOrdIdl, k::SeqEnum[RngIntElt]) -> SeqEnum[ModFrmHilDElt] */
/*   {returns a basis for the GaLois invariant subspace} */
/*   B:=Basis(M,N,k); */
/*   InvariantGenerators:=[]; */
/*   for x in B do */
/*     Append(~InvariantGenerators, 1/2*(x+Swap(x))); */
/*   end for; */
/*   InvariantBasis:=[]; */
/*   for x in InvariantGenerators do */
/*     if #LinearDependence(InvariantBasis cat [x]) eq 0 then */
/*       Append(~InvariantBasis, x); */
/*     end if; */ 
/*   end for; */
/*   return InvariantBasis; */
/* end intrinsic; */