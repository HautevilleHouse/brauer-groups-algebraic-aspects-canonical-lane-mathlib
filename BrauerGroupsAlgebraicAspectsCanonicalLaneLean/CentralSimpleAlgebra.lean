import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type) [Field k] where
  carrier : Type u
  algebraStructure : Algebra k carrier
  finiteDimensional : FiniteDimensional k carrier
  central : Algebra.center k carrier = ⊤
  simple : Submodule.Simple (Algebra.toModule k (carrier))

def BrauerEquiv {k : Type} [Field k] (A B : CentralSimpleAlgebra k) : Prop :=
  Nonempty (A.carrier ≃ₐ[k] (Matrix (Fin n) (Fin n) B.carrier) × (Matrix (Fin n) (Fin n) B.carrier) ≃ₐ[k] A.carrier)

structure BrauerGroup (k : Type) [Field k] where
  objects : Set (CentralSimpleAlgebra k)
  equivalence : BrauerEquiv
  multiplication : CentralSimpleAlgebra k → CentralSimpleAlgebra k → CentralSimpleAlgebra k
  identity : CentralSimpleAlgebra k

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
