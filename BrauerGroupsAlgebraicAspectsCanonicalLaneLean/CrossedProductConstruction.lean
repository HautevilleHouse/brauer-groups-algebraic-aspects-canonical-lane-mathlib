import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupDefinitions

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure GaloisExtension (k K : Type) where
  fieldExtension : Algebra k K
  galois : IsGalois k K

structure CrossedProduct (k : Type) (L : GaloisExtension k) where
  cocycle : GroupHom (GaloisExtension.galois L).toGroup (Units (GaloisExtension.fieldExtension L).toRing)
  action : GaloisAction (GaloisExtension.galois L) (GaloisExtension.fieldExtension L)

theorem crossed_product_is_central_simple (k : Type) (L : GaloisExtension k) (C : CrossedProduct k L) :
    CentralSimpleAlgebra k := by
  sorry

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
