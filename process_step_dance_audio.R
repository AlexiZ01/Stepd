install.packages('tuneR', dep=TRUE)
library(tuneR)
sndObj <- readWave('combinedbeat.wav')
1302464 / sndObj@samp.rate
s1 <- sndObj@left
s1 <- s1 / 2^(sndObj@bit -1)
n <- length(s1)
p <- fft(s1
nUniquePts <- ceiling((n+1)/2)
p <- p[1:nUniquePts]
p <- abs(p)
n <- length(s1)
p <- fft(s1)
p <- p[1:nUniquePts]
p <- abs(p)
timeArray <- (0:(5292-1)) / sndObj@samp.rate
timeArray <- timeArray * 1000
plot(timeArray, s1, type='l', col='black', xlab='Time (ms)', ylab='Amplitude')
> p <- abs(p)
> timeArray <- (0:(1302464-1)) / sndObj@samp.rate
> timeArray <- timeArray * 1000
> plot(timeArray, s1, type='l', col='black', xlab='Time (ms)', ylab='Amplitude')
install.packages('tuneR', dep=TRUE)
library(tuneR)
sndObj <- readWave('combinedbeat.wav')
1302464 / sndObj@samp.rate
s1 <- sndObj@left
s1 <- s1 / 2^(sndObj@bit -1)
timeArray <- (0:(1302464-1)) / sndObj@samp.rate
timeArray <- timeArray * 1000
plot(timeArray, s1, type='l', col='black', xlab='Time (ms)', ylab='Amplitude')
n <- length(s1)
p <- fft(s1)
nUniquePts <- ceiling((n+1)/2)
p <- p[1:nUniquePts]
p <- abs(p)
<- p / n
p <- p^2
if (n %% 2 > 0){
p[2:length(p)] <- p[2:length(p)]*2
} else {
p[2: (length(p) -1)] <- p[2: (length(p) -1)]*2
}
freqArray <- (0:(nUniquePts-1)) * (sndObj@samp.rate / n)
plot(freqArray/1000, 10*log10(p), type='l', col='black', xlab='Frequency (kHz)', ylab='Power (dB)')
p / n
> p <- p^2
> if (n %% 2 > 0){
+     p[2:length(p)] <- p[2:length(p)]*2
+ } else {
+     p[2: (length(p) -1)] <- p[2: (length(p) -1)]*2
+ }
>
> freqArray <- (0:(nUniquePts-1)) * (sndObj@samp.rate / n)
>
> plot(freqArray/1000, 10*log10(p), type='l', col='black', xlab='Frequency (kHz)', ylab='Power (dB)')
