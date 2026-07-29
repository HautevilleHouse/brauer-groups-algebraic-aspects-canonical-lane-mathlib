import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerEquivalencePackage {k : Type} [Field k] where
  source : CentralSimpleAlgebra k
  target : CentralSimpleAlgebra k
  equivalenceData : BrauerEquiv source target

structure BrauerEquivalenceEvidence {k : Type} [Field k] (P : BrauerEquivalencePackage k) where
  equivalenceDataClosed : P.equivalenceData

def BrauerEquivalenceClosed {k : Type} [Field k] (P : BrauerEquivalencePackage k) : Prop :=
  P.equivalenceData

theorem brauer_equivalence_closed_from_evidence {k : Type} [Field k] (P : BrauerEquivalencePackage k) (E : BrauerEquivalenceEvidence P) : BrauerEquivalenceClosed P := by
  exact E.equivalenceDataClosed

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
