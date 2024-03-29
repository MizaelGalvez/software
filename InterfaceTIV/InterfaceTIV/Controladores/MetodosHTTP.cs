﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace InterfaceTIV.Controladores
{
    class MetodosHTTP
    {

        //datos enviados o recibidos por webservice
        public string user { get; set; }
        public string pass { get; set; }
        public int idAlimento { get; set; }
        public string txtAlimento { get; set; }
        public int idActividad { get; set; }
        public string txtActividad { get; set; }
        public int idtexto { get; set; }
        public string txtTecto { get; set; }
        

        public string VerificarUsuario()
        {
            try
            {
                string sURL;

                sURL = String.Format("http://138.197.144.25/gets/VerificarUsuario.php?user=" + user + "&pass=" + pass);


                WebRequest wrGETURL;
                wrGETURL = WebRequest.Create(sURL);

                Stream objStream;
                objStream = wrGETURL.GetResponse().GetResponseStream();

                StreamReader objReader = new StreamReader(objStream);

                string sLine = "";
                int i = 0;


                i++;
                sLine = objReader.ReadLine();

                var definition = new { bActivo = "" };

                string json = sLine;

                json = json.TrimStart('[');
                json = json.TrimEnd(']');


                Console.WriteLine(json);

                var activo = JsonConvert.DeserializeAnonymousType(json, definition);

                Console.WriteLine(activo.bActivo);

                return activo.bActivo;
            }
            catch (Exception)
            {

                return "0";
            }
            

        }


        public string EnviarNotificacion()
        {

            string sURL;

            sURL = String.Format("http://138.197.144.25/inserts/updateVacante.php?txtUsuario="
                                 + user + "&idAlimento=" + idAlimento + "&txtAlimento="
                                 + txtAlimento + "&idActividad=" + idActividad + "&txtActividad=" 
                                 + txtActividad + "&idTexto=" + idtexto + "&txttexto=" + txtTecto);
            
            WebRequest wrGETURL;
            wrGETURL = WebRequest.Create(sURL);

            Stream objStream;
            objStream = wrGETURL.GetResponse().GetResponseStream();


            StreamReader objReader = new StreamReader(objStream);

            string sLine = "";
            int i = 0;
            
            i++;
            sLine = objReader.ReadLine();
            
            string json = sLine;
            
            Console.WriteLine(json);
            
            return json;

        }
        

    }
}
