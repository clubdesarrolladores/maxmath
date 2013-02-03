//---------------------------------------------------------------------------

#ifndef uColasH
#define uColasH

//---------------------------------------------------------------------------
class TCLongDouble
{
  private:
    struct TLongDouble
    {
      long double Value;
      TLongDouble *Next;
    };
    TLongDouble *Begin;
    TLongDouble *End;
    int FCount;
  public:
    TCLongDouble(void);
    ~TCLongDouble(void);
    __property int Count = { read = FCount};
    void Add(long double value);
    void Delete(void);
    bool Empty(void);
    long double GetValue(void);
};
//---------------------------------------------------------------------------
#endif
