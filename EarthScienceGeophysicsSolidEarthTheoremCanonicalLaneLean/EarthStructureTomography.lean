import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure EarthStructureTomographyPackage where
  crustModel : Prop
  mantleModel : Prop
  coreModel : Prop
  densityProfile : Prop
  velocityProfile : Prop

structure EarthStructureTomographyEvidence (E : EarthStructureTomographyPackage) where
  crustModelClosed : E.crustModel
  mantleModelClosed : E.mantleModel
  coreModelClosed : E.coreModel
  densityProfileClosed : E.densityProfile
  velocityProfileClosed : E.velocityProfile

def EarthStructureTomographyClosed (E : EarthStructureTomographyPackage) : Prop :=
  E.crustModel ∧ E.mantleModel ∧ E.coreModel ∧ E.densityProfile ∧ E.velocityProfile

theorem earth_structure_tomography_closed_from_evidence
    (E : EarthStructureTomographyPackage) (Ev : EarthStructureTomographyEvidence E) :
    EarthStructureTomographyClosed E := by
  exact And.intro Ev.crustModelClosed
    (And.intro Ev.mantleModelClosed
      (And.intro Ev.coreModelClosed
        (And.intro Ev.densityProfileClosed Ev.velocityProfileClosed)))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse