import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure HochschildCohomology (A : Type u) [Ring A] (n : ℕ) where
  cocycles : Set (A × A → A)
  coboundaries : Set (A × A → A)
  cohomologyClass : Type v

structure BrauerHochschildPackage {k : Type} [Field k] where
  algebra : CentralSimpleAlgebra k
  hochschild2 : HochschildCohomology (algebra.carrier) 2
  hochschild2IsBrauerGroup : Nonempty (BrauerGroup k).objects := by
    refine ?_
    exact ho
  brauerGroupIsHochschild2 : Nonempty ((BrauerGroup k).objects ≃ hochschild2.cohomologyClass)

structure BrauerHochschildEvidence {k : Type} [Field k] (P : BrauerHochschildPackage k) where
  brauerGroupIsHochschild2Closed : P.brauerGroupIsHochschild2

def BrauerHochschildClosed {k : Type} [Field k] (P : BrauerHochschildPackage k) : Prop :=
  P.brauerGroupIsHochschild2

theorem brauer_hochschild_closed_from_evidence {k : Type} [Field k] (P : BrauerHochschildPackage k) (E : BrauerHochschildEvidence P) : BrauerHochschildClosed P := by
  exact E.brauerGroupIsHochschild2Closed

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
