        if (oSession.url.Contains('/api/users/') && oSession.url.Contains('/games'))
        {
            var oji: Fiddler.WebFormats.JSON.JSONParseResult;
            oji = Fiddler.WebFormats.JSON.JsonDecode(oSession.GetResponseBodyAsString());
            try
            {
                MessageBox.Show(oji.JSONObject["spins_data"]["spins"][0]["questions"][0]["question"]["correct_answer"]+1);
            }
            catch (e)
            {
                
            }
        }
