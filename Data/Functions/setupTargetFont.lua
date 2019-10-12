function _HHC.Functions:setupTargetFont(targetObj,

        useDefaultFont,
        defaultFont,
        customFont,

        useDefaultFontSize,
        defaultFontSize,
        customFontSize,

        useDefaultFontStyle,
        defaultFontStyle,
        customFontStyle,

        useDefaultFontColor,
        defaultFontColorR,
        defaultFontColorG,
        defaultFontColorB,
        defaultFontColorA,
        customFontColorR,
        customFontColorG,
        customFontColorB,
        customFontColorA

    )

    local font;
    local fontSize;
    local fontStyle;
    local fontColorR;
    local fontColorG;
    local fontColorB;
    local fontColorA;

    if useDefaultFont == true then font = defaultFont; else font = customFont; end

    if useDefaultFontSize == true then fontSize = defaultFontSize; else fontSize = customFontSize; end

    if useDefaultFontStyle == true then fontStyle = defaultFontStyle; else fontStyle = customFontStyle; end

    if useDefaultFontColor == true then
        fontColorR = defaultFontColorR;
        fontColorG = defaultFontColorG;
        fontColorB = defaultFontColorB;
        fontColorA = defaultFontColorA;
    else
        fontColorR = customFontColorR;
        fontColorG = customFontColorG;
        fontColorB = customFontColorB;
        fontColorA = customFontColorA;
    end

    if fontStyle == nil then
        targetObj:SetFont(font, fontSize);
    else
        targetObj:SetFont(font, fontSize, fontStyle);
    end

    targetObj:SetTextColor(
        fontColorR,
        fontColorG,
        fontColorB,
        fontColorA
    );

end