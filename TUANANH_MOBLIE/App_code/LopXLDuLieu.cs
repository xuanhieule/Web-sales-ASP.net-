using System;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for LopXLDuLieu
/// </summary>
public class LopXLDuLieu
{
    public LopXLDuLieu()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private SqlConnection ketNoi()
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\ASP.Net\BAN_HANG\BAN_HANG\App_Data\HieuData.mdf;Integrated Security=True");
        try
        {
            conn.Open();
        }
        catch (SqlException)
        {
            return null;
        }
        return conn;
    }

    //public int xuLy(string query)
    //{
    //    SqlConnection con = ketNoi();
    //    SqlCommand comm= new SqlCommand(query, con);
    //    int kq = 0;
    //    try
    //    {
    //        kq = comm.ExecuteNonQuery();
    //    }
    //    catch (SqlException)
    //    {
    //        kq = -1;
    //    }
    //    finally
    //    {
    //        con.Close();
    //    }
    //    return kq;
    //}

    public int xuLyStored(string stored, string[] vals, string[] pars)
    {
        SqlConnection con = ketNoi();
        SqlCommand comm = new SqlCommand(stored, con);
        for (int i = 0; i < vals.Length; i++)
            comm.Parameters.Add(new SqlParameter(pars[i], vals[i]));
        comm.CommandType = CommandType.StoredProcedure;
        return comm.ExecuteNonQuery();

    }

    public DataSet docNhieuDLStored(string stored, string[] vals, string[] pars)
    {
        SqlConnection con = ketNoi();
        SqlCommand comm = new SqlCommand(stored, ketNoi());
        SqlDataAdapter ada = new SqlDataAdapter(comm);
        DataSet ds = new DataSet();
        for (int i = 0; i < vals.Length; i++)
            comm.Parameters.Add(new SqlParameter(pars[i], vals[i]));
        comm.CommandType = CommandType.StoredProcedure;
        ada.Fill(ds);
        return ds;
    }

    public DataSet docNhieuDL(string query)
    {
        SqlConnection con = ketNoi();
        SqlCommand comm = new SqlCommand(query, ketNoi());
        SqlDataAdapter ada = new SqlDataAdapter(comm);
        DataSet ds = new DataSet();
        try
        {
            ada.Fill(ds);
        }
        catch (SqlException)
        {
            ds = null;
        }
        finally
        {
            con.Close();
        }
        return ds;
    }
    public DataTable doc(string st, string[] va, string[] pa)
    {
        SqlCommand com = new SqlCommand(st, ketNoi());
        com.CommandType = System.Data.CommandType.StoredProcedure;
        for (int i = 0; i < va.Length; i++)
            com.Parameters.Add(new SqlParameter(pa[i], va[i]));
        DataTable ds = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(com);
        sda.Fill(ds);
        return ds;
    }


}