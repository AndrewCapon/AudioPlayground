#include "DataTypes.h"
#include "SimpleSineStreamBidirectional.h"

int main(void)
{
    uint32_t debug[cBlockSamples];
    FrequencyType frequency = 100.0;
    uint32_t inputs[2] = {0, FrequencyToAccumPerSample(frequency).range()};
    uint32_t outputs[cBlockSize + 1];


    FILE *fp = fopen("SimpleSineBidirectional.csv","w");
	if (!fp) {
		printf("Can't open file\n");
        return -1;
	}

    for (int iter = 0; iter < 100; iter++)
    {
        uint32_t uIndex = 0;
        SimpleSineStreamBidirectional(inputs, outputs);
        for(int sample = 0; sample < cBlockSize; sample++)
        {
            DataType sampleValue;
            sampleValue.range() = outputs[uIndex++];
            fprintf(fp,"%f, 0\n", sampleValue.to_float());
        }
        PhaseType accumulator;
        accumulator.range() = outputs[uIndex];
        inputs[0] = outputs[uIndex];
        printf("Accumulator = %f\n", accumulator.to_float());
        
    }

    fclose(fp);

    return 0;
}