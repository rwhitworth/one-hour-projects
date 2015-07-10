    static function OnBeforeResponse(oSession: Session) {
        if (oSession.url.Contains('/api/users/') && oSession.url.Contains('/games'))
        {
            var oji: Fiddler.WebFormats.JSON.JSONParseResult;
            oji = Fiddler.WebFormats.JSON.JsonDecode(oSession.GetResponseBodyAsString());
            try
            {             
                if (oji.JSONObject["spins_data"]["spins"][0]["type"] == "CROWN")
                {
                    oSession["ui-customcolumn"] = "";
                    var counter = 0;
                    for (counter=0; counter<6; counter++)
                    {
                        oSession["ui-customcolumn"] = oSession["ui-customcolumn"] + oji.JSONObject["spins_data"]["spins"][0]["questions"][counter]["question"]["category"] + ":" + (oji.JSONObject["spins_data"]["spins"][0]["questions"][counter]["question"]["correct_answer"]+1) + " ";
                    }
                }
                else
                {
                    oSession["ui-customcolumn"] = oji.JSONObject["spins_data"]["spins"][0]["questions"][0]["question"]["category"] + "=" + (oji.JSONObject["spins_data"]["spins"][0]["questions"][0]["question"]["correct_answer"]+1);   
                }
            }
            catch (e)
            {
            }
            if (oSession.oResponse["Content-Length"] < 100)
            {
                oSession["ui-hide"] = "yes"
            }
        }
    }