#include "MultiSineMaster.h"

int main()
{
    FrequencyType   frequency[cVoices];
    DataType        sines[cVoices * cBlockSamples];
    uint32_t debug[cBlockSamples];

    PhaseType       phaseInc[cVoices];

    FrequencyType ufBaseFrequency = 100.0;
    for(int s = 0; s < cVoices; s++)
    {
        FrequencyType ufFrequency = ufBaseFrequency;// * static_cast<FrequencyType>(s+1);
        frequency[s] = ufFrequency;
        phaseInc[s] = FrequencyToAccumPerSample(ufFrequency);
    }

    
    // Display Frequencies
    printf("index, Frequency, PhaseInc\n");
    for(int nSine = 0; nSine < cVoices; nSine ++)
        printf("%d, %f, %f\n", nSine, frequency[nSine].to_float(), phaseInc[nSine].to_float());

    FILE *fp = fopen("MultiSine.csv","w");
	if (!fp) {
		printf("Can't open file\n");
        return -1;
	}

    // output Samples
    for(int iter=0; iter < 10; iter++)
    {
#if DEBUG        
        MultiSineMaster(phaseInc, sines, debug);
#else
        MultiSineMaster(phaseInc, sines);
#endif
        
        for(int nSample = 0; nSample < cBlockSamples; nSample++)
        {
            for(int nSine = 0; nSine < cVoices; nSine++)
            {
                int sineIdx = (nSine*cBlockSamples) + nSample;
                fprintf(fp, "%f%s", sines[sineIdx].to_float(), nSine == (cVoices-1) ? "\n" : ", ");
            }
        
        }
    }

    fclose(fp);
    return 0;
}
