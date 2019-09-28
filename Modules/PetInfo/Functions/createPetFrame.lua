function _HHC.Modules.PetInfo.Functions:createPetFrame(targetFrame)

    --pet frame
    targetFrame.pet = _LibWidgets:createFrame("Frame", targetFrame, _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_WIDTH"], _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_HEIGHT"], true);

    --anchors
    _LibWidgets:setPoint(targetFrame.pet, "TOPLEFT", _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_LEFT_OFFSET"], _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_TOP_OFFSET"]);

    --backdrop
    _LibWidgets:setBackdrop(
        targetFrame.pet,
        nil,
        nil,
        nil,
        "",
        0, 2, 4, 2, 4);
    
    _LibWidgets:setBackdropColor(targetFrame.pet, _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_BACKDROPCOLOR"]);    
    _LibWidgets:setBackdropBorderColor(targetFrame.pet, _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_BACKDROPBORDERCOLOR"]);

    --alpha
    _LibWidgets:setAlpha(targetFrame.pet, _HHC.Modules.PetInfo.Defaults["DEFAULT_PET_FRAME_ALPHA"]);

    return targetFrame.pet;

end