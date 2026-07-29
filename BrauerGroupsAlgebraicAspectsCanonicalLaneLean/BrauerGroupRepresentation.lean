import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroup

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure BrauerGroupRepresentation (k : Type) [Field k] (B : BrauerGroup k) where
  representationSpace : Type u
  representationAction : Algebra k representationSpace
  representationFiniteDimensional : FiniteDimensional k representationSpace
  homomorphism : AlgHom k B.carrier (End k representationSpace)
  faithful : Function.Injective homomorphism
  faithfulTerm : faithful

theorem representation_closed (k : Type) [Field k] (B : BrauerGroup k) (R : BrauerGroupRepresentation k B) :
    R.faithful := by
  exact R.faithfulTerm

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
