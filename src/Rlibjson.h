#include <libjson/libjson.h>
#include <Rdefines.h>
#include <Rinternals.h>

typedef enum { NATIVE_STR_ROUTINE,  SEXP_STR_ROUTINE, R_FUNCTION, GARBAGE} StringFunctionType;

typedef SEXP (*SEXPStringRoutine)(const char *, cetype_t encoding);
typedef char * (*StringRoutine)(const char *);

SEXP processJSONNode(JSONNODE *node, int parentType, int simplify, SEXP nullValue,
                      int simplifyWithNames, cetype_t, SEXP strFun,  StringFunctionType str_fun_type);


typedef enum {NONE, ALL, STRICT_LOGICAL = 2, STRICT_NUMERIC = 4, STRICT_CHARACTER = 8, STRICT = 14} SimplifyStyle;





#ifndef PROBLEM

#define R_PROBLEM_BUFSIZE	4096
#define PROBLEM			{char R_problem_buf[R_PROBLEM_BUFSIZE];(snprintf)(R_problem_buf, R_PROBLEM_BUFSIZE,
#define ERROR			),Rf_error(R_problem_buf);}
#define WARNING(x)		),Rf_warning(R_problem_buf);}
#define WARN			WARNING(NULL)

#endif
