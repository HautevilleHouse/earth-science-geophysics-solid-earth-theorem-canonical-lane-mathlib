import EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean.ElasticWavePropagation

namespace HautevilleHouse
namespace EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean

structure SeismicTomographyPackage {E : EarthStructurePackage} (W : ElasticWavePropagationPackage E) where
  travelTimeInversion : Prop
  velocityModel : Prop
  resolutionAnalysis : Prop
  structuralInterpretation : Prop

structure SeismicTomographyEvidence {E : EarthStructurePackage} {W : ElasticWavePropagationPackage E} (S : SeismicTomographyPackage W) where
  travelTimeInversionClosed : S.travelTimeInversion
  velocityModelClosed : S.velocityModel
  resolutionAnalysisClosed : S.resolutionAnalysis
  structuralInterpretationClosed : S.structuralInterpretation

def SeismicTomographyClosed {E : EarthStructurePackage} {W : ElasticWavePropagationPackage E} (S : SeismicTomographyPackage W) : Prop :=
  S.travelTimeInversion ∧ S.velocityModel ∧ S.resolutionAnalysis ∧ S.structuralInterpretation

theorem seismic_tomography_closed_from_evidence
    {E : EarthStructurePackage} {W : ElasticWavePropagationPackage E}
    (S : SeismicTomographyPackage W) (Ev : SeismicTomographyEvidence S) : SeismicTomographyClosed S := by
  exact And.intro Ev.travelTimeInversionClosed
    (And.intro Ev.velocityModelClosed
      (And.intro Ev.resolutionAnalysisClosed Ev.structuralInterpretationClosed))

end EarthScienceGeophysicsSolidEarthTheoremCanonicalLaneLean
end HautevilleHouse