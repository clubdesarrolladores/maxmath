//---------------------------------------------------------------------------

#ifndef uMatrixH
#define uMatrixH

namespace maxmath {

typedef	unsigned long long TIndex;

template <typename T>
class TMatrix
{
	T **matrix;
    TIndex m, n, order;
    char name[32];
    void init(TIndex m, TIndex n)
    {
    	this->m = m;
        this->n = n;
        this->order = m == n? m: 0;
        matrix = new T*[m];
        for(TIndex i = 0; i < m; ++i)
        	matrix[i] = new T[n];
    }
protected:
	T getItem(TIndex i, TIndex j)
    {
    	if(i < m && j < n)
    		return matrix[i][j];
        else
        	throw Exception("Fuera de rango");
    }
    void setItem(TIndex i, TIndex j, T value)
    {
    	if(i < m && j < n)
    		matrix[i][j] = value;
        else
        	throw Exception("Fuera de rango");
    }
    bool getIsSquare(void)
    {
    	return m == n;
    }
public:
	TMatrix(void)
    {
    	this->init(0, 0);
    }
	TMatrix(const TMatrix<T> &C)
    {
    	this->init(C.Rows, C.Cols);
        for(TIndex i = 0; i < C.Rows; ++i)
        	for(TIndex j = 0; j < C.Cols; ++j)
				matrix[i][j] = C.Items[i][j];
	}
    TMatrix(TIndex o)
    {
    	this->init(o, o);
    }
	TMatrix(TIndex m, TIndex n)
    {
    	this->init(m, n);
    }
    ~TMatrix(void)
    {
        for(TIndex i = 0; i < m; ++i)
        	delete []matrix[i];
        delete []matrix;
    }
    __property T Items[TIndex i][TIndex j] = {read = getItem, write = setItem};
    __property TIndex Order = {read = order};
    __property bool isSquare = {read = getIsSquare};
    __property TIndex Rows = {read = m};
    __property TIndex Cols = {read = n};

    void setName(char* name)
    {
    	strcpy(this->name, name);
    }
    char* getName(void)
    {
    	return name;
    }

    TMatrix<T>& operator = (const TMatrix<T> &C)
    {
        if(this == &C)
        	return *this;
        for(TIndex i = 0; i < m; ++i)
        	delete []matrix[i];
        delete []matrix;
		this->init(C.Rows, C.Cols);
        for(TIndex i = 0; i < C.Rows; ++i)
        	for(TIndex j = 0; j < C.Cols; ++j)
        		matrix[i][j] = C.Items[i][j];
        return *this;
    };

    //operacion -A  NEGATIVO DE UNA MATRIZ
    friend TMatrix operator - (TMatrix &A)
    {
        TMatrix *M = new TMatrix(A.Rows, A.Cols);
        *M = A;
        for(TIndex i = 0; i < A.Rows; ++i)
        	for(TIndex j = 0; j < A.Cols; ++j)
        		M->Items[i][j] *= -1;
        return *M;
    }
    //operaci¢n A+B SUMA DE MATRICES
	friend TMatrix operator+(TMatrix &A,TMatrix &B);
    //operaci¢n A-B RESTA DE MATRICES
	friend TMatrix operator-(TMatrix &A,TMatrix &B);
    //operaci¢n k*B (k es una constante)
	friend TMatrix operator*(T k, TMatrix &A);
    //operaci¢n A*B (Producto matricial)
	friend TMatrix operator*(TMatrix &A, TMatrix &B);
};

template <class T>
T Determinante(TMatrix<T> m)
{
}

template <class T>
void Inversa(TMatrix<T> m)
{
}

template <class T>
void Transpuesta(TMatrix<T> m)
{
}

template <class T>
void Norma(TMatrix<T> m)
{
}

template <class T>
void igualdad(TMatrix<T> m)
{
}

}
//---------------------------------------------------------------------------
#endif
