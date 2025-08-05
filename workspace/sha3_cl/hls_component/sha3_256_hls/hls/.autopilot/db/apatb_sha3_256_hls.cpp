#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <set>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_directio.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_h_0 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_0.dat"
#define AUTOTB_TVOUT_h_0 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_0.dat"
#define AUTOTB_TVIN_h_1 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_1.dat"
#define AUTOTB_TVOUT_h_1 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_1.dat"
#define AUTOTB_TVIN_h_2 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_2.dat"
#define AUTOTB_TVOUT_h_2 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_2.dat"
#define AUTOTB_TVIN_h_3 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_3.dat"
#define AUTOTB_TVOUT_h_3 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_3.dat"
#define AUTOTB_TVIN_h_4 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_4.dat"
#define AUTOTB_TVOUT_h_4 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_4.dat"
#define AUTOTB_TVIN_h_5 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_5.dat"
#define AUTOTB_TVOUT_h_5 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_5.dat"
#define AUTOTB_TVIN_h_6 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_6.dat"
#define AUTOTB_TVOUT_h_6 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_6.dat"
#define AUTOTB_TVIN_h_7 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_7.dat"
#define AUTOTB_TVOUT_h_7 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_7.dat"
#define AUTOTB_TVIN_h_8 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_8.dat"
#define AUTOTB_TVOUT_h_8 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_8.dat"
#define AUTOTB_TVIN_h_9 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_9.dat"
#define AUTOTB_TVOUT_h_9 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_9.dat"
#define AUTOTB_TVIN_h_10 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_10.dat"
#define AUTOTB_TVOUT_h_10 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_10.dat"
#define AUTOTB_TVIN_h_11 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_11.dat"
#define AUTOTB_TVOUT_h_11 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_11.dat"
#define AUTOTB_TVIN_h_12 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_12.dat"
#define AUTOTB_TVOUT_h_12 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_12.dat"
#define AUTOTB_TVIN_h_13 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_13.dat"
#define AUTOTB_TVOUT_h_13 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_13.dat"
#define AUTOTB_TVIN_h_14 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_14.dat"
#define AUTOTB_TVOUT_h_14 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_14.dat"
#define AUTOTB_TVIN_h_15 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_15.dat"
#define AUTOTB_TVOUT_h_15 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_15.dat"
#define AUTOTB_TVIN_h_16 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_16.dat"
#define AUTOTB_TVOUT_h_16 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_16.dat"
#define AUTOTB_TVIN_h_17 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_17.dat"
#define AUTOTB_TVOUT_h_17 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_17.dat"
#define AUTOTB_TVIN_h_18 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_18.dat"
#define AUTOTB_TVOUT_h_18 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_18.dat"
#define AUTOTB_TVIN_h_19 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_19.dat"
#define AUTOTB_TVOUT_h_19 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_19.dat"
#define AUTOTB_TVIN_h_20 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_20.dat"
#define AUTOTB_TVOUT_h_20 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_20.dat"
#define AUTOTB_TVIN_h_21 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_21.dat"
#define AUTOTB_TVOUT_h_21 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_21.dat"
#define AUTOTB_TVIN_h_22 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_22.dat"
#define AUTOTB_TVOUT_h_22 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_22.dat"
#define AUTOTB_TVIN_h_23 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_23.dat"
#define AUTOTB_TVOUT_h_23 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_23.dat"
#define AUTOTB_TVIN_h_24 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_24.dat"
#define AUTOTB_TVOUT_h_24 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_24.dat"
#define AUTOTB_TVIN_h_25 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_25.dat"
#define AUTOTB_TVOUT_h_25 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_25.dat"
#define AUTOTB_TVIN_h_26 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_26.dat"
#define AUTOTB_TVOUT_h_26 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_26.dat"
#define AUTOTB_TVIN_h_27 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_27.dat"
#define AUTOTB_TVOUT_h_27 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_27.dat"
#define AUTOTB_TVIN_h_28 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_28.dat"
#define AUTOTB_TVOUT_h_28 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_28.dat"
#define AUTOTB_TVIN_h_29 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_29.dat"
#define AUTOTB_TVOUT_h_29 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_29.dat"
#define AUTOTB_TVIN_h_30 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_30.dat"
#define AUTOTB_TVOUT_h_30 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_30.dat"
#define AUTOTB_TVIN_h_31 "../tv/cdatafile/c.sha3_256_hls.autotvin_h_31.dat"
#define AUTOTB_TVOUT_h_31 "../tv/cdatafile/c.sha3_256_hls.autotvout_h_31.dat"
#define AUTOTB_TVIN_in_r "../tv/cdatafile/c.sha3_256_hls.autotvin_in_r.dat"
#define AUTOTB_TVOUT_in_r "../tv/cdatafile/c.sha3_256_hls.autotvout_in_r.dat"
#define AUTOTB_TVIN_inlen "../tv/cdatafile/c.sha3_256_hls.autotvin_inlen.dat"
#define AUTOTB_TVOUT_inlen "../tv/cdatafile/c.sha3_256_hls.autotvout_inlen.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_h_0 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_0.dat"
#define AUTOTB_TVOUT_PC_h_1 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_1.dat"
#define AUTOTB_TVOUT_PC_h_2 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_2.dat"
#define AUTOTB_TVOUT_PC_h_3 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_3.dat"
#define AUTOTB_TVOUT_PC_h_4 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_4.dat"
#define AUTOTB_TVOUT_PC_h_5 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_5.dat"
#define AUTOTB_TVOUT_PC_h_6 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_6.dat"
#define AUTOTB_TVOUT_PC_h_7 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_7.dat"
#define AUTOTB_TVOUT_PC_h_8 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_8.dat"
#define AUTOTB_TVOUT_PC_h_9 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_9.dat"
#define AUTOTB_TVOUT_PC_h_10 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_10.dat"
#define AUTOTB_TVOUT_PC_h_11 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_11.dat"
#define AUTOTB_TVOUT_PC_h_12 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_12.dat"
#define AUTOTB_TVOUT_PC_h_13 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_13.dat"
#define AUTOTB_TVOUT_PC_h_14 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_14.dat"
#define AUTOTB_TVOUT_PC_h_15 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_15.dat"
#define AUTOTB_TVOUT_PC_h_16 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_16.dat"
#define AUTOTB_TVOUT_PC_h_17 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_17.dat"
#define AUTOTB_TVOUT_PC_h_18 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_18.dat"
#define AUTOTB_TVOUT_PC_h_19 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_19.dat"
#define AUTOTB_TVOUT_PC_h_20 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_20.dat"
#define AUTOTB_TVOUT_PC_h_21 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_21.dat"
#define AUTOTB_TVOUT_PC_h_22 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_22.dat"
#define AUTOTB_TVOUT_PC_h_23 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_23.dat"
#define AUTOTB_TVOUT_PC_h_24 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_24.dat"
#define AUTOTB_TVOUT_PC_h_25 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_25.dat"
#define AUTOTB_TVOUT_PC_h_26 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_26.dat"
#define AUTOTB_TVOUT_PC_h_27 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_27.dat"
#define AUTOTB_TVOUT_PC_h_28 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_28.dat"
#define AUTOTB_TVOUT_PC_h_29 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_29.dat"
#define AUTOTB_TVOUT_PC_h_30 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_30.dat"
#define AUTOTB_TVOUT_PC_h_31 "../tv/rtldatafile/rtl.sha3_256_hls.autotvout_h_31.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    size_t begin()
    {
      size_t n;
      read((unsigned char*)&n, sizeof(n));
      pos = ftell(fp);
      return n;
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void fmt(std::vector<size_t> &vec)
    {
      ss << "{";
      for (auto &x : vec) {
        ss << " " << x;
      }
      ss << " }";
    }

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransDepth()
    {
      ss << "set trans_depth {\n";
      for (auto &p : transDepth) {
        ss << "  {" << p.first << " ";
        fmt(p.second);
        ss << " " << bundleNameFor[p.first] << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatContainsVLA()
    {
      ss << "set containsVLA " << containsVLA << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransDepth();
      formatContainsVLA();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    typedef const std::string PortName;
    typedef const char *BundleName;
    std::map<PortName, std::vector<size_t>> transDepth;
    std::map<PortName, BundleName> bundleNameFor;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    bool containsVLA;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    void append(const char* portName, size_t dep, const char* bundleName)
    {
      std::lock_guard<std::mutex> guard(mut);
      transDepth[portName].push_back(dep);
      bundleNameFor[portName] = bundleName;
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct DirectIO {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::directio<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (param->valid()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~DirectIO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<const char*> mname;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      if (hbm) {
        return divide_ceil(nbytes[0], asize);
      }
      else {
        size_t depth = 0;
        for (size_t n : nbytes) {
          depth += divide_ceil(n, asize);
        }
        return depth;
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.clear();
        tcl.portHBM.clear();
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        size_t depthHBM = divide_ceil(nbytes[0], asize);
        tcl.append(tcl.nameHBM.c_str(), depthHBM, tcl.nameHBM.c_str());
        if (depthHBM > tcl.depthHBM) {
          tcl.depthHBM = depthHBM;
        }
      } else {
        tcl.set(name[0], depth());
        for (size_t i = 0; i < mname.size(); ++i) {
          tcl.append(mname[i], divide_ceil(nbytes[i], asize), name[0]);
        }
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(DirectIO<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }

  void checkHBM(Memory<Input, Output> &port)
  {
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        size_t n = port.reader->begin();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
        port.reader->reset();
        port.reader->advance(port.asize*n);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }

  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  template<typename E>
  void dump(DirectIO<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }

    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    if (port.hbm) {
      writer->from((unsigned char*)port.param[0], wbytes, port.asize,
                   port.nbytes[0], 0);
    }
    else {
      for (size_t i = 0; i < port.param.size(); ++i) {
        writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                     port.nbytes[i], 0);
      }
    }
  }

  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.mname[i]);
      }
    }
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    if (port.nbytes == 0) {
      error_on_depth_unspecified(port.name);
    }
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void sha3_256_hls_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<8>);

extern "C"
void apatb_sha3_256_hls_hw(void* __xlx_apatb_param_h_0, void* __xlx_apatb_param_h_1, void* __xlx_apatb_param_h_2, void* __xlx_apatb_param_h_3, void* __xlx_apatb_param_h_4, void* __xlx_apatb_param_h_5, void* __xlx_apatb_param_h_6, void* __xlx_apatb_param_h_7, void* __xlx_apatb_param_h_8, void* __xlx_apatb_param_h_9, void* __xlx_apatb_param_h_10, void* __xlx_apatb_param_h_11, void* __xlx_apatb_param_h_12, void* __xlx_apatb_param_h_13, void* __xlx_apatb_param_h_14, void* __xlx_apatb_param_h_15, void* __xlx_apatb_param_h_16, void* __xlx_apatb_param_h_17, void* __xlx_apatb_param_h_18, void* __xlx_apatb_param_h_19, void* __xlx_apatb_param_h_20, void* __xlx_apatb_param_h_21, void* __xlx_apatb_param_h_22, void* __xlx_apatb_param_h_23, void* __xlx_apatb_param_h_24, void* __xlx_apatb_param_h_25, void* __xlx_apatb_param_h_26, void* __xlx_apatb_param_h_27, void* __xlx_apatb_param_h_28, void* __xlx_apatb_param_h_29, void* __xlx_apatb_param_h_30, void* __xlx_apatb_param_h_31, void* __xlx_apatb_param_in_r, hls::sim::Byte<8> __xlx_apatb_param_inlen)
{
  static hls::sim::Register port0 {
    .name = "h_0",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_0),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_0),
#endif
  };
  port0.param = __xlx_apatb_param_h_0;

  static hls::sim::Register port1 {
    .name = "h_1",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_1),
#endif
  };
  port1.param = __xlx_apatb_param_h_1;

  static hls::sim::Register port2 {
    .name = "h_2",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_2),
#endif
  };
  port2.param = __xlx_apatb_param_h_2;

  static hls::sim::Register port3 {
    .name = "h_3",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_3),
#endif
  };
  port3.param = __xlx_apatb_param_h_3;

  static hls::sim::Register port4 {
    .name = "h_4",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_4),
#endif
  };
  port4.param = __xlx_apatb_param_h_4;

  static hls::sim::Register port5 {
    .name = "h_5",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_5),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_5),
#endif
  };
  port5.param = __xlx_apatb_param_h_5;

  static hls::sim::Register port6 {
    .name = "h_6",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_6),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_6),
#endif
  };
  port6.param = __xlx_apatb_param_h_6;

  static hls::sim::Register port7 {
    .name = "h_7",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_7),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_7),
#endif
  };
  port7.param = __xlx_apatb_param_h_7;

  static hls::sim::Register port8 {
    .name = "h_8",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_8),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_8),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_8),
#endif
  };
  port8.param = __xlx_apatb_param_h_8;

  static hls::sim::Register port9 {
    .name = "h_9",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_9),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_9),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_9),
#endif
  };
  port9.param = __xlx_apatb_param_h_9;

  static hls::sim::Register port10 {
    .name = "h_10",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_10),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_10),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_10),
#endif
  };
  port10.param = __xlx_apatb_param_h_10;

  static hls::sim::Register port11 {
    .name = "h_11",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_11),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_11),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_11),
#endif
  };
  port11.param = __xlx_apatb_param_h_11;

  static hls::sim::Register port12 {
    .name = "h_12",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_12),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_12),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_12),
#endif
  };
  port12.param = __xlx_apatb_param_h_12;

  static hls::sim::Register port13 {
    .name = "h_13",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_13),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_13),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_13),
#endif
  };
  port13.param = __xlx_apatb_param_h_13;

  static hls::sim::Register port14 {
    .name = "h_14",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_14),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_14),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_14),
#endif
  };
  port14.param = __xlx_apatb_param_h_14;

  static hls::sim::Register port15 {
    .name = "h_15",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_15),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_15),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_15),
#endif
  };
  port15.param = __xlx_apatb_param_h_15;

  static hls::sim::Register port16 {
    .name = "h_16",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_16),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_16),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_16),
#endif
  };
  port16.param = __xlx_apatb_param_h_16;

  static hls::sim::Register port17 {
    .name = "h_17",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_17),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_17),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_17),
#endif
  };
  port17.param = __xlx_apatb_param_h_17;

  static hls::sim::Register port18 {
    .name = "h_18",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_18),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_18),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_18),
#endif
  };
  port18.param = __xlx_apatb_param_h_18;

  static hls::sim::Register port19 {
    .name = "h_19",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_19),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_19),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_19),
#endif
  };
  port19.param = __xlx_apatb_param_h_19;

  static hls::sim::Register port20 {
    .name = "h_20",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_20),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_20),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_20),
#endif
  };
  port20.param = __xlx_apatb_param_h_20;

  static hls::sim::Register port21 {
    .name = "h_21",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_21),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_21),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_21),
#endif
  };
  port21.param = __xlx_apatb_param_h_21;

  static hls::sim::Register port22 {
    .name = "h_22",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_22),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_22),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_22),
#endif
  };
  port22.param = __xlx_apatb_param_h_22;

  static hls::sim::Register port23 {
    .name = "h_23",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_23),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_23),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_23),
#endif
  };
  port23.param = __xlx_apatb_param_h_23;

  static hls::sim::Register port24 {
    .name = "h_24",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_24),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_24),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_24),
#endif
  };
  port24.param = __xlx_apatb_param_h_24;

  static hls::sim::Register port25 {
    .name = "h_25",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_25),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_25),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_25),
#endif
  };
  port25.param = __xlx_apatb_param_h_25;

  static hls::sim::Register port26 {
    .name = "h_26",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_26),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_26),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_26),
#endif
  };
  port26.param = __xlx_apatb_param_h_26;

  static hls::sim::Register port27 {
    .name = "h_27",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_27),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_27),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_27),
#endif
  };
  port27.param = __xlx_apatb_param_h_27;

  static hls::sim::Register port28 {
    .name = "h_28",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_28),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_28),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_28),
#endif
  };
  port28.param = __xlx_apatb_param_h_28;

  static hls::sim::Register port29 {
    .name = "h_29",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_29),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_29),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_29),
#endif
  };
  port29.param = __xlx_apatb_param_h_29;

  static hls::sim::Register port30 {
    .name = "h_30",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_30),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_30),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_30),
#endif
  };
  port30.param = __xlx_apatb_param_h_30;

  static hls::sim::Register port31 {
    .name = "h_31",
    .width = 8,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_h_31),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_h_31),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_h_31),
#endif
  };
  port31.param = __xlx_apatb_param_h_31;

  static hls::sim::Register port32 {
    .name = "inlen",
    .width = 64,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_inlen),
#endif
  };
  port32.param = &__xlx_apatb_param_inlen;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port33 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port33 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "in_r" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_in_r),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_in_r),
#endif
#endif
    .hasWrite = { false },
  };
  port33.param = { __xlx_apatb_param_in_r };
  port33.mname = { "in_r" };
  port33.nbytes = { 2048 };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port0);
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port28);
    check(port29);
    check(port30);
    check(port31);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    tcl.containsVLA = 0;
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    CodeState = CALL_C_DUT;
    sha3_256_hls_hw_stub_wrapper(__xlx_apatb_param_h_0, __xlx_apatb_param_h_1, __xlx_apatb_param_h_2, __xlx_apatb_param_h_3, __xlx_apatb_param_h_4, __xlx_apatb_param_h_5, __xlx_apatb_param_h_6, __xlx_apatb_param_h_7, __xlx_apatb_param_h_8, __xlx_apatb_param_h_9, __xlx_apatb_param_h_10, __xlx_apatb_param_h_11, __xlx_apatb_param_h_12, __xlx_apatb_param_h_13, __xlx_apatb_param_h_14, __xlx_apatb_param_h_15, __xlx_apatb_param_h_16, __xlx_apatb_param_h_17, __xlx_apatb_param_h_18, __xlx_apatb_param_h_19, __xlx_apatb_param_h_20, __xlx_apatb_param_h_21, __xlx_apatb_param_h_22, __xlx_apatb_param_h_23, __xlx_apatb_param_h_24, __xlx_apatb_param_h_25, __xlx_apatb_param_h_26, __xlx_apatb_param_h_27, __xlx_apatb_param_h_28, __xlx_apatb_param_h_29, __xlx_apatb_param_h_30, __xlx_apatb_param_h_31, __xlx_apatb_param_in_r, __xlx_apatb_param_inlen);
    CodeState = DUMP_OUTPUTS;
    dump(port0, port0.owriter, tcl.AESL_transaction);
    dump(port1, port1.owriter, tcl.AESL_transaction);
    dump(port2, port2.owriter, tcl.AESL_transaction);
    dump(port3, port3.owriter, tcl.AESL_transaction);
    dump(port4, port4.owriter, tcl.AESL_transaction);
    dump(port5, port5.owriter, tcl.AESL_transaction);
    dump(port6, port6.owriter, tcl.AESL_transaction);
    dump(port7, port7.owriter, tcl.AESL_transaction);
    dump(port8, port8.owriter, tcl.AESL_transaction);
    dump(port9, port9.owriter, tcl.AESL_transaction);
    dump(port10, port10.owriter, tcl.AESL_transaction);
    dump(port11, port11.owriter, tcl.AESL_transaction);
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port16, port16.owriter, tcl.AESL_transaction);
    dump(port17, port17.owriter, tcl.AESL_transaction);
    dump(port18, port18.owriter, tcl.AESL_transaction);
    dump(port19, port19.owriter, tcl.AESL_transaction);
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port25, port25.owriter, tcl.AESL_transaction);
    dump(port26, port26.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port29, port29.owriter, tcl.AESL_transaction);
    dump(port30, port30.owriter, tcl.AESL_transaction);
    dump(port31, port31.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}