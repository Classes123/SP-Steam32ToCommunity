void Steam32ToCommunityID(int iSteam32, char[] szBuff, int iMaxLength)
{
    if(iSteam32 >= 2039734272) //Most consider this to be no longer a valid
    {
        FormatEx(szBuff, iMaxLength, "76561200%i", 60265728 + iSteam32 % 100000000);
    }
    else
    {
        FormatEx(szBuff, iMaxLength, "7656119%i%i", 79 + iSteam32 / 100000000, 60265728 + iSteam32 % 100000000);
    }
}

/**
 *  Bonus
 *  SteamID to Steam32ID
 */
int SteamIDToSteam32(const char[] szSteamID)
{
    char szExp[3][10];
    ExplodeString(szSteamID, ":", szExp, 3, 10);
    return StringToInt(szExp[2]) * 2 + StringToInt(szExp[1]);
}