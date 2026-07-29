import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean

def CohomologyAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cohomology_admissible_closure (A : AdmissibleClass) :
  CohomologyAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CohomologyClassifyingSpacesPseudogroupStructuresFoundationCanonicalLaneLean
end HautevilleHouse