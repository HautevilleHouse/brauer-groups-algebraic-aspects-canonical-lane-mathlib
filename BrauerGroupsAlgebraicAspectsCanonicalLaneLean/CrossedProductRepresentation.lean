import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsAlgebraicAspectsCanonicalLaneLean.BrauerGroupStructure

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsCanonicalLaneLean

structure CrossedProductData (k : Type) [Field k] where
  fieldExtension : Type
  fieldExtensionIsField : Field fieldExtension
  galoisGroup : Type
  galoisGroupIsGroup : Group galoisGroup
  cocycle : galoisGroup × galoisGroup → fieldExtension
  cocycleCondition : ∀ g h r, cocycle (g, h) * (cocycle (g*h, r) ^ g) = cocycle (g, h*r) * (cocycle (h, r))

structure CrossedProductRepresentation (K : Type) [Field K] where
  data : CrossedProductData K
  isCrossedProduct : Prop
  brauerEquivalent : BrauerGroupStructure
  equivalenceProof : data.isCrossedProduct ∧ brauerEquivalent.identity = brauerEquivalent.identity

end BrauerGroupsAlgebraicAspectsCanonicalLaneLean
end HautevilleHouse
