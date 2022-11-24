<?php

/**
 * Function untuk mengecek session apakah login
 */
function is_login()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $id_user = $CI->session->userdata('id_user');
    if (!$id_user) {
        redirect('login');
    }
}
/**
 * Function untuk pengecekan session tidak login
 */
function is_not_login()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    // $id_user = $CI->session->userdata('id_user');
    $app = $CI->session->userdata('id_user');
    if ($app) {
        redirect('home');
    }
}

/**
 * Function ini digunakan untuk membatasi akses user. ket:
 * 1 = Admin
 * 2 = NBA
 * 3 = BPR
 * 4 = Cabang
 * 5 = Other
 * @param int $level    level user yang akan di diperbolehkan mengakses
 * @param array $speciallevel    level user yang akan dikecualikan
 */
function is_access($level, $speciallevel = [])
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $level_user = $CI->session->userdata('level');
    if ($level_user <= $level) {
        return true;
    } elseif (in_array($level_user, $speciallevel)) {
        return true;
    } elseif ($level_user == null) {
        return redirect('login', 'refresh');;
    } else {
        return redirect('login', 'refresh');;
    }
}

/**
 * Function untuk akses KPNO
 */
function is_kpno()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $kode_kantor = $CI->session->userdata('active_kantor');
    // $src = $CI->session->userdata('active_src');
    if ($kode_kantor == '000') {
        return redirect('dashboard', 'refresh');;
    }
}

/**
 * Function untuk denied akses KPNO
 */
function is_no_kpno()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $kode_kantor = $CI->session->userdata('active_kantor');
    // $src = $CI->session->userdata('active_src');
    if ($kode_kantor != '000') {
        return redirect('dashboard', 'refresh');;
    }
}

/**
 * Function untuk disabled Dashboard
 */
function is_dashboard()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $kode_kantor = $CI->session->userdata('active_kantor');
    // $src = $CI->session->userdata('active_src');
    if ($kode_kantor != '000') {
        return redirect('bedahDebitur', 'refresh');
    } else {
        return redirect('fm', 'refresh');
    }
}

/**
 * Function untuk cek buka tutup aplikasi
 */
function is_open()
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $src = $CI->session->userdata('active_src');
    $kantor = $CI->session->userdata('active_kantor');
    $CI->db->select('open');
    $CI->db->where('src', $src);
    $CI->db->where('kode_kantor', $kantor);
    $CI->db->where('open', '1');
    $cek = $CI->db->get('lock_table')->row_array();
    return $cek['open'];
}

/**
 * Function untuk cek buka tutup aplikasi dan bulan sebelumnya
 */
function is_buka($level)
{
    // Getting CI class instance.
    $CI = get_instance();
    // mendapatkan class active
    $src = $CI->session->userdata('active_src');
    $kantor = $CI->session->userdata('active_kantor');
    $bulan = $CI->session->userdata('bulan');
    $tahun = $CI->session->userdata('tahun');
    $CI->db->select('open');
    $CI->db->where('src', $src);
    $CI->db->where('kode_kantor', $kantor);
    $CI->db->where('open', '1');
    $cek = $CI->db->get('lock_table')->row_array();
    $level_login = $CI->session->userdata('level');
    if (strpos($level, $level_login) !== false) {
        if ($cek['open'] == '1') {
            $open = '';
        } else {
            $open = 'disabled';
        }
        if ($bulan == date('m') && $tahun == date('Y')) {
            return $open;
        } else {
            return 'disabled';
        }
    } else {
        return 'disabled';
    }
}
