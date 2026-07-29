import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerRepresentationPackage {k : Type} [Field k] where
  algebra : CentralSimpleAlgebra k
  representationType : Type u
  representationAction : representationType → End (Algebra.toModule k (algebra.carrier))
  faithful : Prop

structure BrauerRepresentationEvidence {k : Type} [Field k] (P : BrauerRepresentationPackage k) where
  faithfulClosed : P.faithful

def BrauerRepresentationClosed {k : Type} [Field k] (P : BrauerRepresentationPackage k) : Prop :=
  P.faithful

theorem brauer_representation_closed_from_evidence {k : Type} [Field k] (P : BrauerRepresentationPackage k) (E : BrauerRepresentationEvidence P) : BrauerRepresentationClosed P := by
  exact E.faithfulClosed

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
