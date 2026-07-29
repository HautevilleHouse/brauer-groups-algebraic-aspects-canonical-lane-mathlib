import BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerCentralSimpleAlgebras

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CrossedProductPackage {F : BrauerAdmittedObject} (G : CentralSimpleAlgebraPackage F) where
  galoisExtension : Type
  cocycle : Type
  crossedProductAlgebra : Type
  csaRepresented : Prop
  productDimensionMatches : Prop

structure CrossedProductEvidence {F : BrauerAdmittedObject} {G : CentralSimpleAlgebraPackage F} (C : CrossedProductPackage G) where
  csaRepresentedClosed : C.csaRepresented
  productDimensionMatchesClosed : C.productDimensionMatches

def CrossedProductClosed {F : BrauerAdmittedObject} {G : CentralSimpleAlgebraPackage F} (C : CrossedProductPackage G) : Prop :=
  C.csaRepresented ∧ C.productDimensionMatches

theorem crossed_product_closed_from_evidence
    {F : BrauerAdmittedObject} {G : CentralSimpleAlgebraPackage F} (C : CrossedProductPackage G) (E : CrossedProductEvidence C) :
    CrossedProductClosed C := by
  exact And.intro E.csaRepresentedClosed E.productDimensionMatchesClosed

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
