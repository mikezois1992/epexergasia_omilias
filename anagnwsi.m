% kwdikas gia text to speech parathyrika
function anagnwsi(keimeno,omilia)
userPrompt = 'Grapste ti thelete na pei o ypologisths parakalw!!!'; %mhnyma sthn arxi toy parathyrou
titleBar = 'Keimeno se Omilia'; %titlos parathyrou
defaultString = 'Edw grafete to keimeno gia anagnwsi!!!';%xwros ston opoio o xrhsths tha pliktrologisei to keimeno
keimeno = inputdlg(userPrompt, titleBar, 10, {defaultString});
if isempty(keimeno)
  return;
end; % an patisei to cancel kleise to parathyro kai telos programmatos.
keimeno = char(keimeno); % kanei thn metatropi apo kelia se keimeno string.
NET.addAssembly('System.Speech'); %xrhsh ths Microsoft .NET gia na kanei anagnwsi to text
omilia = System.Speech.Synthesis.SpeechSynthesizer; %fortwnw sti metavliti omilia thn SpeechSynthesizer
omilia.Volume = 100; %thetw entasi =100
omilia.Rate = 0; % thetw taxythta omilias= 0 , to 0 einai default timi gia kanoniki taxythta
