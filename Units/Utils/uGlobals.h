//---------------------------------------------------------------------------

#ifndef uGlobalsH
#define uGlobalsH

#include <map>

#include <system.hpp>

using namespace std;

class Globals
{
    private:
        map<AnsiString, AnsiString> collection;
        static Globals *inst;
        Globals(){}
        static Globals * getInstance()
        {
            if ( ! inst )
                inst = new Globals;
            return inst;
        };
    public:
        static void add(AnsiString key, AnsiString value)
        {
            Globals::getInstance()->collection[key] = value;
        }
        static void del(AnsiString key)
        {
            Globals::getInstance()->collection.erase(key);
        }
        static AnsiString get(AnsiString key)
        {
            return Globals::getInstance()->collection[key];
        }
        
};

Globals *Globals::inst = 0;

//---------------------------------------------------------------------------
#endif
