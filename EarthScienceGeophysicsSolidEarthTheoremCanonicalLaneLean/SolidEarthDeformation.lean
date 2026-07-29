import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure SolidEarthDeformationPackage where
  elasticity : Prop
  viscoelasticity : Prop
  faultRupture : Prop
  postseismicDeformation : Prop
  interseismicStrain : Prop

structure SolidEarthDeformationEvidence (S : SolidEarthDeformationPackage) where
  elasticityClosed : S.elasticity
  viscoelasticityClosed : S.viscoelasticity
  faultRuptureClosed : S.faultRupture
  postseismicDeformationClosed : S.postseismicDeformation
  interseismicStrainClosed : S.interseismicStrain

def SolidEarthDeformationClosed (S : SolidEarthDeformationPackage) : Prop :=
  S.elasticity ∧ S.viscoelasticity ∧ S.faultRupture ∧ S.postseismicDeformation ∧ S.interseismicStrain

theorem solid_earth_deformation_closed_from_evidence
    (S : SolidEarthDeformationPackage) (Ev : SolidEarthDeformationEvidence S) :
    SolidEarthDeformationClosed S := by
  exact And.intro Ev.elasticityClosed
    (And.intro Ev.viscoelasticityClosed
      (And.intro Ev.faultRuptureClosed
        (And.intro Ev.postseismicDeformationClosed Ev.interseismicStrainClosed)))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse