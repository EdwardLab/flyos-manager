.class public Lgnu/xquery/lang/XQParser;
.super Lgnu/text/Lexer;
.source "XQParser.java"


# static fields
.field static final ARROW_TOKEN:I = 0x52

.field static final ATTRIBUTE_TOKEN:I = 0xfc

.field static final AXIS_ANCESTOR:I = 0x0

.field static final AXIS_ANCESTOR_OR_SELF:I = 0x1

.field static final AXIS_ATTRIBUTE:I = 0x2

.field static final AXIS_CHILD:I = 0x3

.field static final AXIS_DESCENDANT:I = 0x4

.field static final AXIS_DESCENDANT_OR_SELF:I = 0x5

.field static final AXIS_FOLLOWING:I = 0x6

.field static final AXIS_FOLLOWING_SIBLING:I = 0x7

.field static final AXIS_NAMESPACE:I = 0x8

.field static final AXIS_PARENT:I = 0x9

.field static final AXIS_PRECEDING:I = 0xa

.field static final AXIS_PRECEDING_SIBLING:I = 0xb

.field static final AXIS_SELF:I = 0xc

.field static final CASE_DOLLAR_TOKEN:I = 0xf7

.field static final COLON_COLON_TOKEN:I = 0x58

.field static final COLON_EQUAL_TOKEN:I = 0x4c

.field static final COMMENT_TOKEN:I = 0xfe

.field static final COUNT_OP_AXIS:I = 0xd

.field static final DECIMAL_TOKEN:C = '1'

.field static final DECLARE_BASE_URI_TOKEN:I = 0x42

.field static final DECLARE_BOUNDARY_SPACE_TOKEN:I = 0x53

.field static final DECLARE_CONSTRUCTION_TOKEN:I = 0x4b

.field static final DECLARE_COPY_NAMESPACES_TOKEN:I = 0x4c

.field static final DECLARE_FUNCTION_TOKEN:I = 0x50

.field static final DECLARE_NAMESPACE_TOKEN:I = 0x4e

.field static final DECLARE_OPTION_TOKEN:I = 0x6f

.field static final DECLARE_ORDERING_TOKEN:I = 0x55

.field static final DECLARE_VARIABLE_TOKEN:I = 0x56

.field static final DEFAULT_COLLATION_TOKEN:I = 0x47

.field static final DEFAULT_ELEMENT_TOKEN:I = 0x45

.field static final DEFAULT_FUNCTION_TOKEN:I = 0x4f

.field static final DEFAULT_ORDER_TOKEN:I = 0x48

.field static final DEFINE_QNAME_TOKEN:I = 0x57

.field static final DOCUMENT_TOKEN:I = 0x100

.field static final DOTDOT_TOKEN:I = 0x33

.field static final DOT_VARNAME:Lgnu/mapping/Symbol;

.field static final DOUBLE_TOKEN:C = '2'

.field static final ELEMENT_TOKEN:I = 0xfb

.field static final EOF_TOKEN:I = -0x1

.field static final EOL_TOKEN:I = 0xa

.field static final EVERY_DOLLAR_TOKEN:I = 0xf6

.field static final FNAME_TOKEN:I = 0x46

.field static final FOR_DOLLAR_TOKEN:I = 0xf3

.field static final IF_LPAREN_TOKEN:I = 0xf1

.field static final IMPORT_MODULE_TOKEN:I = 0x49

.field static final IMPORT_SCHEMA_TOKEN:I = 0x54

.field static final INTEGER_TOKEN:C = '0'

.field static final LAST_VARNAME:Lgnu/mapping/Symbol;

.field static final LET_DOLLAR_TOKEN:I = 0xf4

.field static final MODULE_NAMESPACE_TOKEN:I = 0x4d

.field static final NCNAME_COLON_TOKEN:I = 0x43

.field static final NCNAME_TOKEN:I = 0x41

.field static final OP_ADD:I = 0x19d

.field static final OP_AND:I = 0x191

.field static final OP_ATTRIBUTE:I = 0xec

.field static final OP_AXIS_FIRST:I = 0x64

.field static final OP_BASE:I = 0x190

.field static final OP_CASTABLE_AS:I = 0x1a8

.field static final OP_CAST_AS:I = 0x1a9

.field static final OP_COMMENT:I = 0xe8

.field static final OP_DIV:I = 0x1a0

.field static final OP_DOCUMENT:I = 0xea

.field static final OP_ELEMENT:I = 0xeb

.field static final OP_EMPTY_SEQUENCE:I = 0xee

.field static final OP_EQ:I = 0x1aa

.field static final OP_EQU:I = 0x192

.field static final OP_EXCEPT:I = 0x1a5

.field static final OP_GE:I = 0x1af

.field static final OP_GEQ:I = 0x197

.field static final OP_GRT:I = 0x195

.field static final OP_GRTGRT:I = 0x19a

.field static final OP_GT:I = 0x1ae

.field static final OP_IDIV:I = 0x1a1

.field static final OP_INSTANCEOF:I = 0x1a6

.field static final OP_INTERSECT:I = 0x1a4

.field static final OP_IS:I = 0x198

.field static final OP_ISNOT:I = 0x199

.field static final OP_ITEM:I = 0xed

.field static final OP_LE:I = 0x1ad

.field static final OP_LEQ:I = 0x196

.field static final OP_LSS:I = 0x194

.field static final OP_LSSLSS:I = 0x19b

.field static final OP_LT:I = 0x1ac

.field static final OP_MOD:I = 0x1a2

.field static final OP_MUL:I = 0x19f

.field static final OP_NE:I = 0x1ab

.field static final OP_NEQ:I = 0x193

.field static final OP_NODE:I = 0xe6

.field static final OP_OR:I = 0x190

.field static final OP_PI:I = 0xe9

.field static final OP_RANGE_TO:I = 0x19c

.field static final OP_SCHEMA_ATTRIBUTE:I = 0xef

.field static final OP_SCHEMA_ELEMENT:I = 0xf0

.field static final OP_SUB:I = 0x19e

.field static final OP_TEXT:I = 0xe7

.field static final OP_TREAT_AS:I = 0x1a7

.field static final OP_UNION:I = 0x1a3

.field static final OP_WHERE:I = 0xc4

.field static final ORDERED_LBRACE_TOKEN:I = 0xf9

.field static final PI_TOKEN:I = 0xff

.field static final POSITION_VARNAME:Lgnu/mapping/Symbol;

.field static final PRAGMA_START_TOKEN:I = 0xc5

.field static final QNAME_TOKEN:I = 0x51

.field static final SLASHSLASH_TOKEN:I = 0x44

.field static final SOME_DOLLAR_TOKEN:I = 0xf5

.field static final STRING_TOKEN:I = 0x22

.field static final TEXT_TOKEN:I = 0xfd

.field static final TYPESWITCH_LPAREN_TOKEN:I = 0xf2

.field static final UNORDERED_LBRACE_TOKEN:I = 0xfa

.field static final VALIDATE_LBRACE_TOKEN:I = 0xf8

.field static final XQUERY_VERSION_TOKEN:I = 0x59

.field public static final axisNames:[Ljava/lang/String;

.field static builtinNamespaces:Lgnu/xml/NamespaceBinding; = null

.field public static final castableAs:Lgnu/xquery/util/CastableAs;

.field public static final getExternalFunction:Lgnu/expr/QuoteExp;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field static final makeCDATA:Lgnu/expr/Expression;

.field public static makeChildAxisStep:Lgnu/expr/QuoteExp; = null

.field public static makeDescendantAxisStep:Lgnu/expr/QuoteExp; = null

.field public static makeText:Lgnu/expr/Expression; = null

.field static proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure; = null

.field public static final treatAs:Lgnu/kawa/functions/Convert;

.field public static warnHidePreviousDeclaration:Z = false

.field public static warnOldVersion:Z = true


# instance fields
.field baseURI:Lgnu/text/Path;

.field baseURIDeclarationSeen:Z

.field boundarySpaceDeclarationSeen:Z

.field boundarySpacePreserve:Z

.field commentCount:I

.field comp:Lgnu/expr/Compilation;

.field constructionModeDeclarationSeen:Z

.field constructionModeStrip:Z

.field constructorNamespaces:Lgnu/xml/NamespaceBinding;

.field copyNamespacesDeclarationSeen:Z

.field copyNamespacesMode:I

.field curColumn:I

.field curLine:I

.field curToken:I

.field curValue:Ljava/lang/Object;

.field defaultCollator:Lgnu/xquery/util/NamedCollator;

.field defaultElementNamespace:Ljava/lang/String;

.field defaultEmptyOrder:C

.field emptyOrderDeclarationSeen:Z

.field enclosedExpressionsSeen:I

.field errorIfComment:Ljava/lang/String;

.field flworDecls:[Lgnu/expr/Declaration;

.field flworDeclsCount:I

.field flworDeclsFirst:I

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field interpreter:Lgnu/xquery/lang/XQuery;

.field libraryModuleNamespace:Ljava/lang/String;

.field orderingModeSeen:Z

.field orderingModeUnordered:Z

.field parseContext:I

.field parseCount:I

.field prologNamespaces:Lgnu/xml/NamespaceBinding;

.field private saveToken:I

.field private saveValue:Ljava/lang/Object;

.field seenDeclaration:Z

.field seenLast:I

.field seenPosition:I

.field private warnedOldStyleKindTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "$dot$"

    .line 59
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const-string v0, "$position$"

    .line 62
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    const-string v0, "$last$"

    .line 65
    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    .line 67
    new-instance v0, Lgnu/kawa/reflect/InstanceOf;

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v1

    const-string v2, "instance"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/lang/XQParser;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 69
    sget-object v0, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    sput-object v0, Lgnu/xquery/lang/XQParser;->castableAs:Lgnu/xquery/util/CastableAs;

    .line 70
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sput-object v0, Lgnu/xquery/lang/XQParser;->treatAs:Lgnu/kawa/functions/Convert;

    .line 1528
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    .line 1958
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.xml.ChildAxis"

    const-string v2, "make"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1960
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.kawa.xml.DescendantAxis"

    invoke-direct {v0, v1, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    const-string v0, "gnu.kawa.xml.MakeText"

    const-string v1, "makeText"

    .line 2262
    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    const-string v0, "gnu.kawa.xml.MakeCDATA"

    const-string v1, "makeCDATA"

    .line 2448
    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    .line 3654
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 3655
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xml"

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3656
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "xs"

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3657
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "xsi"

    const-string v5, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3658
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "fn"

    const-string v5, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3659
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "html"

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3660
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "kawa"

    const-string v5, "http://kawa.gnu.org/"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3661
    new-instance v1, Lgnu/xml/NamespaceBinding;

    const-string v2, "qexo"

    const-string v5, "http://qexo.gnu.org/"

    invoke-direct {v1, v2, v5, v0}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3662
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v2, "local"

    const-string v5, "http://www.w3.org/2005/xquery-local-functions"

    invoke-direct {v0, v2, v5, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 3663
    sput-object v0, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3721
    new-instance v0, Lgnu/expr/PrimProcedure;

    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v2, "getExternal"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v2, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 4275
    sput-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ancestor"

    aput-object v2, v0, v1

    const-string v1, "ancestor-or-self"

    aput-object v1, v0, v4

    const-string v1, "attribute"

    aput-object v1, v0, v5

    const-string v1, "child"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "descendant"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "descendant-or-self"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "following"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "following-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "namespace"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "preceding"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "preceding-sibling"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "self"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V
    .locals 0

    .line 1220
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    const/16 p2, 0x4c

    .line 77
    iput-char p2, p0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 80
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    const/4 p1, 0x3

    .line 158
    iput p1, p0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 166
    sget-object p1, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    const-string p1, ""

    .line 3641
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 3646
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1221
    iput-object p3, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    const/4 p1, 0x1

    .line 1222
    iput p1, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1225
    sget-object p1, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1226
    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public static booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "gnu.xquery.util.BooleanValue"

    const-string v1, "booleanValue"

    .line 2443
    invoke-static {p0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    .line 2445
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method static castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;
    .locals 3

    if-eqz p1, :cond_0

    .line 2552
    sget-object p1, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 2554
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, p1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    invoke-direct {v0, v1, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method static fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object p0

    .line 100
    instance-of v0, p0, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-static {p0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private lookingAt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 901
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    .line 904
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    if-gez v2, :cond_1

    return p1

    :cond_1
    int-to-char p2, v2

    .line 909
    invoke-static {p2}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 911
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 917
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0

    .line 920
    :cond_5
    :goto_1
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Lgnu/text/LineBufferedReader;->skip(I)I

    return v0
.end method

.method static makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1280
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-direct {p1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1
.end method

.method static makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    const-string v0, "gnu.kawa.functions.AppendValues"

    const-string v1, "appendValues"

    .line 1285
    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 4295
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1

    .line 4303
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-static {p0, p1, p2}, Lgnu/expr/Declaration;->getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v0
.end method

.method static makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    if-eqz p0, :cond_0

    const-string p0, "gnu.kawa.xml.AttributeType"

    goto :goto_0

    :cond_0
    const-string p0, "gnu.kawa.xml.ElementType"

    .line 1435
    :goto_0
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    .line 1438
    new-instance v0, Lgnu/expr/ApplyExp;

    const-string v1, "make"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    new-array v1, v2, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    const/4 p0, 0x4

    .line 1440
    invoke-virtual {v0, p0}, Lgnu/expr/ApplyExp;->setFlag(I)V

    if-nez p2, :cond_1

    return-object v0

    .line 1446
    :cond_1
    new-instance p0, Lgnu/expr/BeginExp;

    invoke-direct {p0, p2, v0}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object p0
.end method

.method private parseSimpleKindType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1385
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 1386
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_0
    const-string v0, "expected \')\'"

    .line 1388
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final priority(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xb

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    const/4 p0, 0x7

    return p0

    :pswitch_6
    const/4 p0, 0x6

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_a
    const/4 p0, 0x2

    return p0

    :pswitch_b
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private setToken(II)I
    .locals 1

    .line 485
    iput p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 486
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 487
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    return p1
.end method

.method private warnOldStyleKindTest()V
    .locals 2

    .line 1453
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x77

    const-string v1, "old-style KindTest - first one here"

    .line 1455
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    const/4 v0, 0x1

    .line 1456
    iput-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    return-void
.end method


# virtual methods
.method public appendNamedEntity(Ljava/lang/String;)V
    .locals 2

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lt"

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3c

    goto :goto_0

    :cond_0
    const-string v0, "gt"

    if-ne p1, v0, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const-string v0, "amp"

    if-ne p1, v0, :cond_2

    const/16 p1, 0x26

    goto :goto_0

    :cond_2
    const-string v0, "quot"

    if-ne p1, v0, :cond_3

    const/16 p1, 0x22

    goto :goto_0

    :cond_3
    const-string v0, "apos"

    if-ne p1, v0, :cond_4

    const/16 p1, 0x27

    goto :goto_0

    .line 755
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown enity reference: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    const/16 p1, 0x3f

    .line 756
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    return-void
.end method

.method checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "xml"

    .line 1199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 1200
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "XQST0070"

    const/16 v2, 0x65

    if-eqz p2, :cond_1

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    :cond_0
    const-string p1, "namespace uri cannot be the same as the prefined xml namespace"

    .line 1203
    invoke-virtual {p0, v2, p1, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string p2, "xmlns"

    .line 1206
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "namespace prefix cannot be \'xml\' or \'xmlns\'"

    .line 1207
    invoke-virtual {p0, v2, p1, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method checkSeparator(C)V
    .locals 2

    .line 493
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x65

    const-string v0, "missing separator"

    const-string v1, "XPST0003"

    .line 494
    invoke-virtual {p0, p1, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4359
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v0, :cond_0

    .line 4360
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 4361
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 4364
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 4366
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 4368
    :cond_2
    :goto_1
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const-string v0, "XPST0003"

    .line 4410
    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4353
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 4344
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4345
    new-instance v7, Lgnu/text/SourceError;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object v1, v7

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4347
    iput-object p3, v7, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4348
    invoke-virtual {v0, v7}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4416
    new-instance v7, Lgnu/text/SourceError;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const/16 v2, 0x66

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4418
    iput-object p2, v7, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4419
    invoke-virtual {v0, v7}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4420
    new-instance p1, Lgnu/text/SyntaxException;

    invoke-direct {p1, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1
.end method

.method getAxis()I
    .locals 4

    .line 927
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 930
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    :cond_1
    if-ltz v1, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v1, 0x65

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown axis name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XPST0003"

    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    :cond_3
    add-int/lit8 v1, v1, 0x64

    int-to-char v0, v1

    return v0
.end method

.method public getDelimited(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->readDelimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected end-of-file looking for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getRawToken()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    .line 505
    invoke-direct {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_31

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    goto/16 :goto_f

    :cond_2
    const/16 v2, 0x28

    const/16 v3, 0x3a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_5

    .line 513
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x23

    .line 515
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc5

    const/4 v1, 0x2

    .line 516
    invoke-direct {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    .line 518
    :cond_4
    invoke-direct {p0, v2, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    :cond_5
    const/16 v2, 0x2d

    const/16 v5, 0x7b

    if-ne v0, v5, :cond_8

    .line 522
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 523
    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    .line 524
    :cond_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 528
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 530
    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    .line 532
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_0

    :cond_8
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_0

    .line 537
    iput v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 538
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 539
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    int-to-char v0, v0

    const/16 v6, 0x21

    const/16 v7, 0x22

    const/16 v8, 0x41

    const/16 v9, 0x3d

    if-eq v0, v6, :cond_2f

    if-eq v0, v7, :cond_2a

    const/16 v6, 0x24

    if-eq v0, v6, :cond_30

    const/16 v6, 0x27

    if-eq v0, v6, :cond_2a

    const/16 v7, 0x2f

    if-eq v0, v7, :cond_29

    const/16 v7, 0x5b

    if-eq v0, v7, :cond_30

    const/16 v7, 0x5d

    if-eq v0, v7, :cond_30

    const/16 v7, 0x7c

    if-eq v0, v7, :cond_28

    const/16 v7, 0x7d

    if-eq v0, v7, :cond_30

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0x3e

    packed-switch v0, :pswitch_data_1

    .line 610
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    const/16 v10, 0x2e

    if-nez v7, :cond_15

    if-ne v0, v10, :cond_9

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v7

    int-to-char v7, v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne v0, v10, :cond_a

    .line 670
    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v0, 0x33

    goto/16 :goto_e

    .line 674
    :cond_a
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 678
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 679
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    int-to-char v1, v0

    .line 681
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_12

    if-gez v0, :cond_b

    const/16 v0, 0x41

    goto/16 :goto_e

    :cond_b
    if-eq v0, v3, :cond_c

    :goto_2
    const/16 v1, 0x41

    goto :goto_3

    .line 692
    :cond_c
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-gez v0, :cond_d

    const-string v1, "unexpected end-of-file after NAME \':\'"

    .line 694
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_d
    int-to-char v1, v0

    .line 696
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 698
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 701
    :cond_e
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 702
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    int-to-char v1, v0

    .line 704
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v1, 0x51

    goto :goto_3

    :cond_f
    if-ne v1, v9, :cond_10

    .line 711
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_2

    :cond_10
    const/16 v1, 0x43

    .line 717
    :goto_3
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    :cond_11
    :goto_4
    move v0, v1

    goto/16 :goto_e

    :cond_12
    move v0, v1

    goto :goto_1

    :cond_13
    if-lt v0, v5, :cond_14

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_14

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_e

    .line 723
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character \'\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_e

    :cond_15
    :goto_5
    if-ne v0, v10, :cond_16

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    .line 616
    :goto_6
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 617
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-gez v0, :cond_17

    goto :goto_8

    :cond_17
    int-to-char v5, v0

    if-ne v5, v10, :cond_19

    if-eqz v3, :cond_18

    goto :goto_8

    :cond_18
    move v0, v5

    :goto_7
    const/4 v3, 0x1

    goto :goto_6

    .line 626
    :cond_19
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_22

    :goto_8
    const/16 v6, 0x65

    if-eq v0, v6, :cond_1c

    const/16 v4, 0x45

    if-ne v0, v4, :cond_1a

    goto :goto_a

    :cond_1a
    if-eqz v3, :cond_1b

    const/16 v1, 0x31

    goto :goto_9

    :cond_1b
    const/16 v1, 0x30

    :goto_9
    if-ltz v0, :cond_11

    int-to-char v2, v0

    .line 663
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 664
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_4

    :cond_1c
    :goto_a
    int-to-char v0, v0

    .line 631
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 632
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_1e

    .line 635
    :cond_1d
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 636
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    :cond_1e
    :goto_b
    if-gez v0, :cond_1f

    goto :goto_c

    :cond_1f
    int-to-char v0, v0

    .line 644
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_21

    .line 646
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 647
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    :goto_c
    if-nez v1, :cond_20

    const-string v0, "no digits following exponent"

    const-string v1, "XPST0003"

    .line 655
    invoke-virtual {p0, v6, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/16 v0, 0x32

    goto/16 :goto_e

    .line 650
    :cond_21
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 651
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    move v0, v5

    goto :goto_6

    .line 578
    :pswitch_0
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x197

    goto/16 :goto_e

    :cond_23
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x19a

    goto/16 :goto_e

    :cond_24
    const/16 v0, 0x195

    goto/16 :goto_e

    .line 573
    :pswitch_1
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    const/16 v0, 0x192

    goto/16 :goto_e

    .line 582
    :pswitch_2
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x196

    goto/16 :goto_e

    :cond_25
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x19b

    goto/16 :goto_e

    :cond_26
    const/16 v0, 0x194

    goto :goto_e

    .line 547
    :pswitch_3
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v0, 0x4c

    goto :goto_e

    .line 549
    :cond_27
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v0, 0x58

    goto :goto_e

    :pswitch_4
    const/16 v0, 0x19e

    goto :goto_e

    :pswitch_5
    const/16 v0, 0x19d

    goto :goto_e

    :pswitch_6
    const/16 v0, 0x19f

    goto :goto_e

    :cond_28
    const/16 v0, 0x1a3

    goto :goto_e

    .line 569
    :cond_29
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v0, 0x44

    goto :goto_e

    .line 586
    :cond_2a
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 589
    :goto_d
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v2

    if-gez v2, :cond_2b

    const-string v3, "unexpected end-of-file in string starting here"

    .line 591
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_2b
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2c

    .line 594
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    goto :goto_d

    :cond_2c
    if-ne v0, v2, :cond_2e

    .line 599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v2

    if-eq v0, v2, :cond_2d

    .line 606
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    const/16 v0, 0x22

    goto :goto_e

    .line 602
    :cond_2d
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 604
    :cond_2e
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_d

    .line 565
    :cond_2f
    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_30

    const/16 v0, 0x193

    .line 725
    :cond_30
    :goto_e
    :pswitch_7
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 508
    :cond_31
    :goto_f
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-gtz v0, :cond_0

    .line 509
    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getStaticBaseUri()Ljava/lang/String;
    .locals 4

    .line 107
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    if-nez v0, :cond_5

    .line 110
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v2, ""

    const-string v3, "base-uri"

    .line 111
    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    instance-of v2, v1, Lgnu/text/Path;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 124
    instance-of v2, v0, Lgnu/text/FilePath;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lgnu/text/Path;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Lgnu/mapping/TtyInPort;

    if-nez v2, :cond_3

    instance-of v1, v1, Lgnu/mapping/CharArrayInPort;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 132
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v3

    .line 134
    :cond_4
    invoke-static {v3}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 138
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const-string v0, "gnu.kawa.xml.IntersectNodes"

    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "gnu.xquery.util.ArithOp"

    const-string v3, "gnu.xquery.util.Compare"

    packed-switch p1, :pswitch_data_0

    .line 1376
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unimplemented binary op: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "valGe"

    const-string v0, "ge"

    .line 1330
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "valGt"

    const-string v0, "gt"

    .line 1327
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "valLe"

    const-string v0, "le"

    .line 1324
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "valLt"

    const-string v0, "lt"

    .line 1321
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "valNe"

    const-string v0, "ne"

    .line 1318
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "valEq"

    const-string v0, "eq"

    .line 1315
    invoke-static {v3, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "exceptNodes"

    .line 1373
    invoke-static {v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_8
    const-string p1, "intersectNodes"

    .line 1369
    invoke-static {v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_9
    const-string p1, "gnu.kawa.xml.UnionNodes"

    const-string v0, "unionNodes"

    .line 1366
    invoke-static {p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_a
    const-string p1, "mod"

    .line 1312
    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_b
    const-string p1, "idiv"

    .line 1309
    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_c
    const-string p1, "div"

    .line 1306
    invoke-static {v2, p1, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_d
    const-string p1, "mul"

    const-string v0, "*"

    .line 1303
    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_e
    const-string p1, "sub"

    const-string v0, "-"

    .line 1300
    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_f
    const-string p1, "add"

    const-string v0, "+"

    .line 1297
    invoke-static {v2, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_10
    const-string p1, "gnu.xquery.util.IntegerRange"

    const-string v0, "integerRange"

    .line 1363
    invoke-static {p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_11
    const-string p1, "$Ls"

    const-string v0, "<<"

    .line 1360
    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_12
    const-string p1, "$Gr"

    const-string v0, ">>"

    .line 1357
    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_13
    const-string p1, "$Ne"

    const-string v0, "isnot"

    .line 1354
    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_14
    const-string p1, "$Eq"

    const-string v0, "is"

    .line 1351
    invoke-static {v1, p1, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_15
    const-string p1, ">="

    .line 1348
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_16
    const-string p1, "<="

    .line 1342
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_17
    const-string p1, ">"

    .line 1345
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_18
    const-string p1, "<"

    .line 1339
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_19
    const-string p1, "!="

    .line 1336
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto :goto_0

    :pswitch_1a
    const-string p1, "="

    .line 1333
    invoke-static {v3, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    .line 1378
    :goto_0
    invoke-static {p1, p2, p3}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x192
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public mark()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-super {p0}, Lgnu/text/Lexer;->mark()V

    .line 471
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    .line 472
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .locals 4

    .line 3159
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, 0x0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_0

    return v1

    .line 3161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3162
    iget v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 3166
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3167
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->mark()V

    .line 765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 766
    invoke-virtual {p0, p2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 769
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    return v1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    if-eqz p3, :cond_1

    const/16 p3, 0x65

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' must be followed by \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XPST0003"

    invoke-virtual {p0, p3, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public maybeSetLine(Lgnu/expr/Declaration;II)V
    .locals 1

    .line 4442
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4445
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setFile(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Declaration;->setLine(II)V

    :cond_0
    return-void
.end method

.method public maybeSetLine(Lgnu/expr/Expression;II)V
    .locals 2

    .line 4431
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4432
    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lgnu/expr/QuoteExp;

    if-nez v1, :cond_0

    .line 4435
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Expression;->setLine(II)V

    :cond_0
    return-void
.end method

.method protected namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;
    .locals 5

    const/16 v0, 0x3a

    .line 3668
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p2, 0x0

    .line 3669
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "(functions)"

    goto :goto_0

    :cond_1
    sget-object p2, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 3672
    :goto_0
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {p2, v1, v2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    if-gez v0, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 3679
    :cond_2
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3683
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 3684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 3693
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    const/16 v2, 0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown namespace prefix \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XPST0081"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "(unknown namespace)"

    :cond_4
    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 3699
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3700
    :goto_2
    invoke-static {v1, p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 3730
    iput-object v8, v1, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return-object v2

    .line 3734
    :cond_0
    iget v3, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    .line 3735
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v3

    add-int/2addr v3, v9

    .line 3737
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v9

    const/16 v5, 0x23

    const/16 v6, 0xa

    if-ne v0, v5, :cond_3

    if-ne v3, v9, :cond_3

    if-ne v4, v9, :cond_3

    .line 3742
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 3743
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v5, 0x21

    if-ne v0, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_2

    :cond_1
    const-string v5, "\'#\' is only allowed in initial \'#!/PROGRAM\'"

    .line 3744
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/16 v5, 0xd

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_3

    if-ltz v0, :cond_3

    .line 3746
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    goto :goto_0

    .line 3749
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    return-object v2

    .line 3751
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 3753
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x77

    const-string v10, "namespace"

    const/16 v11, 0x41

    if-ne v0, v11, :cond_6

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3756
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v0, :cond_5

    const-string v0, "use \'declare namespace\' instead of \'namespace\'"

    .line 3757
    invoke-virtual {v1, v7, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_5
    const/16 v0, 0x4e

    .line 3758
    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3766
    :cond_6
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v12, 0x42

    if-eq v0, v12, :cond_6a

    const/16 v12, 0x45

    const/16 v15, 0x65

    if-eq v0, v12, :cond_5e

    const/16 v12, 0x59

    if-eq v0, v12, :cond_4d

    const/16 v7, 0x6f

    if-eq v0, v7, :cond_4a

    const-string v7, "missing \'=\' in namespace declaration"

    const-string v12, "XQST0088"

    const-string v2, "missing namespace prefix"

    const-string v14, "missing uri in namespace declaration"

    packed-switch v0, :pswitch_data_0

    const-string v13, "strip"

    const-string v11, "preserve"

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 4261
    invoke-virtual {v1, v5, v9}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v0

    .line 4262
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v6, :cond_7

    .line 4263
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4264
    :cond_7
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 4265
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "query body in a library module"

    const-string v3, "XPST0003"

    .line 4266
    invoke-virtual {v1, v15, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 3769
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3770
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    const-string v3, "unexpected end-of-file after \'define QName\'"

    .line 3771
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_9

    const-string v3, "\'missing \'function\' after \'define\'"

    .line 3774
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    const/16 v3, 0x41

    .line 3775
    iput v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3776
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "missing keyword after \'define\'"

    .line 3779
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3795
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "missing Variable"

    .line 3798
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3799
    :cond_a
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 3800
    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v10, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v5, v6, v7, v10}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3803
    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 3805
    :cond_b
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 3807
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3808
    iget-object v5, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eq v2, v5, :cond_d

    const-string v5, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const-string v2, "variable not in namespace of library module"

    const-string v5, "XQST0048"

    .line 3810
    invoke-virtual {v1, v15, v2, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3813
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3814
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v2

    .line 3816
    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    const-wide/16 v5, 0x4000

    .line 3818
    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3821
    iget v5, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x192

    if-eq v5, v6, :cond_f

    const/16 v7, 0x4c

    if-ne v5, v7, :cond_e

    goto :goto_1

    :cond_e
    const/4 v5, 0x0

    goto :goto_2

    :cond_f
    :goto_1
    if-ne v5, v6, :cond_10

    const-string v5, "declare variable contains \'=\' instead of \':=\'"

    .line 3824
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3825
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/4 v5, 0x1

    .line 3828
    :goto_2
    iget v6, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_11

    const-string v5, "obsolete \'{\' in variable declaration"

    .line 3830
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 3831
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v5

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto :goto_7

    :cond_11
    const-string v6, "external"

    .line 3834
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    .line 3836
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v6

    aput-object v6, v5, v7

    if-nez v2, :cond_12

    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_3

    :cond_12
    move-object v6, v2

    :goto_3
    aput-object v6, v5, v9

    .line 3841
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    invoke-direct {v6, v7, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3842
    iget v5, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v7, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v1, v6, v5, v7}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_6

    .line 3847
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    if-eqz v5, :cond_15

    if-nez v6, :cond_14

    goto :goto_4

    :cond_14
    const/16 v16, 0x0

    goto :goto_5

    :cond_15
    :goto_4
    const-string v5, "expected \':= init\' or \'external\'"

    .line 3850
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object/from16 v16, v5

    :goto_5
    if-nez v6, :cond_16

    move-object/from16 v5, v16

    goto :goto_7

    :cond_16
    :goto_6
    move-object v5, v6

    :goto_7
    if-eqz v2, :cond_17

    .line 3855
    invoke-static {v5, v2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    .line 3856
    :cond_17
    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3857
    invoke-static {v0, v5}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v0

    .line 3858
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3859
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    return-object v0

    .line 4192
    :pswitch_2
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_18

    const-string v0, "duplicate \'declare ordering\' seen"

    const-string v2, "XQST0065"

    .line 4193
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4194
    :cond_18
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    .line 4195
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "ordered"

    .line 4196
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    .line 4197
    iput-boolean v2, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    goto :goto_8

    :cond_19
    const-string v0, "unordered"

    .line 4198
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4199
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    .line 4202
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4203
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_1a
    const-string v0, "ordering declaration must be ordered or unordered"

    .line 4201
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4091
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4092
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x192

    if-ne v0, v2, :cond_1b

    const-string v0, "obsolate \'=\' in boundary-space declaration"

    .line 4094
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4097
    :cond_1b
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_1c

    const-string v0, "duplicate \'declare boundary-space\' seen"

    const-string v2, "XQST0068"

    .line 4098
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4099
    :cond_1c
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    .line 4100
    invoke-virtual {v1, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4101
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_9

    .line 4102
    :cond_1d
    invoke-virtual {v1, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v2, 0x0

    .line 4103
    iput-boolean v2, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    const-string v0, "skip"

    .line 4104
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "update: declare boundary-space skip -> strip"

    .line 4106
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4107
    iput-boolean v2, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    .line 4111
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4112
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_1f
    const-string v0, "boundary-space declaration must be preserve or strip"

    .line 4110
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3782
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3783
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    .line 3784
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v5, "unexpected end-of-file after \'define function\'"

    .line 3785
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    const/16 v5, 0x64

    .line 3786
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v5

    .line 3787
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    .line 3788
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3789
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3790
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3791
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    return-object v0

    :pswitch_5
    const/16 v5, 0x4d

    if-ne v0, v5, :cond_20

    .line 3865
    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v6, :cond_20

    const-string v6, "duplicate module declaration"

    .line 3867
    invoke-virtual {v1, v15, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_a

    .line 3868
    :cond_20
    iget-boolean v6, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v6, :cond_21

    iget-boolean v6, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_21

    const-string v6, "namespace declared after function/variable/option"

    .line 3869
    invoke-virtual {v1, v15, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3870
    :cond_21
    :goto_a
    iget v6, v1, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_22

    const/4 v6, 0x1

    goto :goto_b

    :cond_22
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v6

    if-ltz v6, :cond_2a

    .line 3873
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->unread()V

    int-to-char v6, v6

    .line 3874
    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 3876
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3877
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_23

    .line 3878
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3879
    :cond_23
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    .line 3880
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3881
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x192

    if-eq v3, v4, :cond_24

    .line 3882
    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3883
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3884
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_25

    .line 3885
    invoke-virtual {v1, v14}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3886
    :cond_25
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 3887
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 3888
    iget-object v4, v1, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3889
    :goto_c
    sget-object v6, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    if-eq v4, v6, :cond_27

    .line 3892
    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v2, :cond_26

    .line 3894
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duplicate declarations for the same namespace prefix \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XQST0033"

    invoke-virtual {v1, v15, v4, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 3890
    :cond_26
    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_c

    .line 3901
    :cond_27
    :goto_d
    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3902
    invoke-virtual {v1, v2, v3, v4}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    if-ne v0, v5, :cond_29

    .line 3906
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 3907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3909
    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 3910
    new-instance v4, Lgnu/bytecode/ClassType;

    invoke-direct {v4, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v4, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 3911
    iget-object v2, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3912
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v2

    .line 3913
    invoke-virtual {v2, v8}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    .line 3914
    invoke-virtual {v2, v3}, Lgnu/expr/ModuleInfo;->setNamespaceUri(Ljava/lang/String;)V

    .line 3915
    iget-object v2, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3916
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "zero-length module namespace"

    .line 3917
    invoke-virtual {v1, v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3918
    :cond_28
    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    .line 3920
    :cond_29
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_2a
    :pswitch_6
    const-string v0, "\'import schema\' not implemented"

    const-string v5, "XQST0009"

    .line 3925
    invoke-virtual {v1, v0, v5}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4129
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4130
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_2b

    const-string v0, "duplicate \'declare copy-namespaces\' seen"

    const-string v2, "XQST0055"

    .line 4131
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4132
    :cond_2b
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    .line 4133
    invoke-virtual {v1, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4134
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/2addr v0, v9

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_e

    :cond_2c
    const-string v0, "no-preserve"

    .line 4135
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4136
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4139
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4140
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_2d

    const-string v0, "missing \',\' in copy-namespaces declaration"

    .line 4141
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4142
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "inherit"

    .line 4143
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4144
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_f

    :cond_2e
    const-string v0, "no-inherit"

    .line 4145
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 4146
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4149
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4150
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_2f
    const-string v0, "expected \'inherit\' or \'no-inherit\' in copy-namespaces declaration"

    .line 4148
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_30
    const-string v0, "expected \'preserve\' or \'no-preserve\' after \'declare copy-namespaces\'"

    .line 4138
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4115
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4116
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_31

    const-string v0, "duplicate \'declare construction\' seen"

    const-string v2, "XQST0067"

    .line 4117
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4118
    :cond_31
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    .line 4119
    invoke-virtual {v1, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4120
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    goto :goto_10

    .line 4121
    :cond_32
    invoke-virtual {v1, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v2, 0x0

    .line 4122
    iput-boolean v2, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    .line 4125
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4126
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_33
    const-string v0, "construction declaration must be strip or preserve"

    .line 4124
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3928
    :goto_11
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3930
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3932
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3933
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    if-eq v0, v5, :cond_34

    .line 3934
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3935
    :cond_34
    new-instance v2, Ljava/lang/String;

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6, v5}, Ljava/lang/String;-><init>([CII)V

    .line 3936
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3937
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x192

    if-eq v0, v5, :cond_35

    .line 3938
    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3939
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_12

    :cond_36
    const/4 v2, 0x0

    .line 3941
    :goto_12
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x22

    if-eq v0, v5, :cond_37

    .line 3942
    invoke-virtual {v1, v14}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3943
    :cond_37
    iget v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-nez v0, :cond_38

    const-string v0, "zero-length target namespace"

    .line 3944
    invoke-virtual {v1, v0, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3945
    :cond_38
    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    if-eqz v2, :cond_39

    .line 3948
    invoke-virtual {v1, v2, v10, v7}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3953
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    .line 3956
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v11

    .line 3957
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 3958
    invoke-static {v10}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3959
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v3, v4}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    const-string v2, "at"

    .line 3960
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3964
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3965
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x22

    if-eq v0, v2, :cond_3b

    const-string v0, "missing module location"

    .line 3966
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3967
    :cond_3b
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3971
    invoke-static {v0, v11}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 3973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v15, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    :cond_3c
    const/4 v4, 0x0

    move-object v5, v12

    move-object v6, v11

    move-object/from16 v7, p1

    .line 3974
    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 3976
    iget v0, v1, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    goto :goto_13

    :cond_3d
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_3a

    .line 3979
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3983
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto :goto_16

    .line 3987
    :cond_3e
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v13

    .line 3991
    :try_start_0
    invoke-virtual {v13, v0}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_14

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 4000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading map for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :catch_0
    :goto_14
    const/4 v0, 0x0

    const/16 v17, 0x0

    .line 4004
    :goto_15
    invoke-virtual {v13, v0}, Lgnu/expr/ModuleManager;->getModule(I)Lgnu/expr/ModuleInfo;

    move-result-object v3

    if-nez v3, :cond_42

    if-nez v17, :cond_3f

    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no module found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4015
    :cond_3f
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_40

    .line 4016
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4018
    :cond_40
    :goto_16
    iget-object v0, v8, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-eqz v0, :cond_41

    iget-object v0, v8, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_41

    const-string v0, "module import forms a cycle"

    const-string v2, "XQST0073"

    .line 4020
    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_41
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 4023
    invoke-virtual {v12, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4024
    invoke-static {v0}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4007
    :cond_42
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_17

    :cond_43
    add-int/lit8 v17, v17, 0x1

    .line 4010
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v12

    move-object v6, v11

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 4153
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "empty"

    .line 4154
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    .line 4155
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    if-eqz v2, :cond_44

    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v2, :cond_44

    const-string v2, "duplicate \'declare default empty order\' seen"

    const-string v3, "XQST0069"

    .line 4156
    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4157
    :cond_44
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    const-string v2, "expected \'empty greatest\' or \'empty least\'"

    if-eqz v0, :cond_45

    .line 4159
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_18

    .line 4161
    :cond_45
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :goto_18
    const-string v0, "greatest"

    .line 4162
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/16 v0, 0x47

    .line 4163
    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    goto :goto_19

    :cond_46
    const-string v0, "least"

    .line 4164
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/16 v0, 0x4c

    .line 4165
    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 4168
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4169
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4167
    :cond_47
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4027
    :pswitch_b
    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    const-string v2, "XQST0038"

    if-eqz v0, :cond_48

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_48

    const-string v0, "duplicate default collation declaration"

    .line 4028
    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v0

    .line 4030
    instance-of v3, v0, Lgnu/expr/Expression;

    if-eqz v3, :cond_49

    .line 4031
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4032
    :cond_49
    check-cast v0, Ljava/lang/String;

    .line 4035
    :try_start_1
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4036
    invoke-static {v0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v3

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1a

    .line 4040
    :catch_1
    sget-object v3, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 4041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown collation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4043
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4044
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4172
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4173
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-eq v0, v2, :cond_4b

    const-string v0, "expected QName after \'declare option\'"

    .line 4174
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1b

    .line 4177
    :cond_4b
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4178
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v6, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v2, v3, v5, v6}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 4179
    invoke-virtual {v1, v0, v4}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 4180
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4181
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4c

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected string literal after \'declare option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1b

    .line 4185
    :cond_4c
    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v5, 0x0

    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2, v0}, Lgnu/xquery/lang/XQParser;->handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V

    .line 4187
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4188
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 4189
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4206
    :cond_4d
    iget v0, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-eq v0, v9, :cond_4e

    const-string v0, "\'xquery version\' does not start module"

    .line 4207
    invoke-virtual {v1, v15, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_1c

    .line 4208
    :cond_4e
    iget v0, v1, Lgnu/xquery/lang/XQParser;->commentCount:I

    if-lez v0, :cond_4f

    const-string v0, "comments should not precede \'xquery version\'"

    .line 4209
    invoke-virtual {v1, v7, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4210
    :cond_4f
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4211
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x22

    if-ne v0, v2, :cond_5d

    .line 4213
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "1.0"

    .line 4214
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 4215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized xquery version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XQST0031"

    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "encoding"

    .line 4220
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4222
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4223
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x22

    if-eq v0, v2, :cond_51

    const-string v0, "invalid encoding specification"

    .line 4224
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4227
    :cond_51
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4228
    iget v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-nez v0, :cond_52

    goto :goto_20

    :cond_52
    const/4 v13, 0x0

    :cond_53
    :goto_1d
    add-int/2addr v0, v5

    if-ltz v0, :cond_59

    if-nez v13, :cond_59

    .line 4232
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0x41

    if-lt v2, v3, :cond_55

    const/16 v4, 0x5a

    if-le v2, v4, :cond_54

    goto :goto_1f

    :cond_54
    :goto_1e
    const/16 v4, 0x2e

    goto :goto_1d

    :cond_55
    :goto_1f
    const/16 v4, 0x61

    if-lt v2, v4, :cond_56

    const/16 v4, 0x7a

    if-gt v2, v4, :cond_56

    goto :goto_1e

    :cond_56
    if-eqz v0, :cond_58

    const/16 v4, 0x30

    if-lt v2, v4, :cond_57

    const/16 v4, 0x39

    if-le v2, v4, :cond_54

    :cond_57
    const/16 v4, 0x2e

    if-eq v2, v4, :cond_53

    const/16 v6, 0x5f

    if-eq v2, v6, :cond_53

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_53

    goto :goto_20

    :cond_58
    const/16 v4, 0x2e

    :goto_20
    const/4 v13, 0x1

    goto :goto_1d

    :cond_59
    if-eqz v13, :cond_5a

    const-string v0, "invalid encoding name syntax"

    const-string v2, "XQST0087"

    .line 4241
    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4243
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4246
    :cond_5b
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_5c

    const-string v0, "missing \';\'"

    .line 4247
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4248
    :cond_5c
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :cond_5d
    const-string v0, "missing version string after \'xquery version\'"

    .line 4219
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_5e
    :pswitch_c
    const/16 v2, 0x4f

    if-ne v0, v2, :cond_5f

    const/4 v5, 0x1

    goto :goto_21

    :cond_5f
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_60

    const-string v0, "(functions)"

    goto :goto_22

    .line 4049
    :cond_60
    sget-object v0, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 4051
    :goto_22
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v2, v0, v3}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    const-string v2, "duplicate default namespace declaration"

    const-string v3, "XQST0066"

    .line 4052
    invoke-virtual {v1, v15, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 4055
    :cond_61
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v2, :cond_62

    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v2, :cond_62

    const-string v2, "default namespace declared after function/variable/option"

    .line 4056
    invoke-virtual {v1, v15, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4057
    :cond_62
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4058
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4059
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v4, 0x192

    goto :goto_24

    :cond_63
    const-string v2, "expected \'namespace\' keyword"

    .line 4063
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-eq v3, v4, :cond_64

    const/16 v4, 0x192

    if-eq v3, v4, :cond_65

    .line 4064
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_64
    const/16 v4, 0x192

    .line 4066
    :cond_65
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4068
    :goto_24
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v4, :cond_66

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_67

    :cond_66
    const-string v2, "extra \'=\' in default namespace declaration"

    .line 4070
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4071
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4073
    :cond_67
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x22

    if-eq v2, v3, :cond_68

    const-string v0, "missing namespace uri"

    .line 4074
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4075
    :cond_68
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_69

    new-array v3, v9, [Lgnu/mapping/Namespace;

    .line 4078
    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 4079
    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_25

    .line 4083
    :cond_69
    iput-object v2, v1, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 4085
    :goto_25
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    invoke-virtual {v1, v0, v2, v6}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4088
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4251
    :cond_6a
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    if-eqz v0, :cond_6b

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_6b

    const-string v0, "duplicate \'declare base-uri\' seen"

    const-string v2, "XQST0032"

    .line 4252
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4253
    :cond_6b
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    .line 4254
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v0

    .line 4255
    instance-of v2, v0, Lgnu/expr/Expression;

    if-eqz v2, :cond_6c

    .line 4256
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4257
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4258
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->setStaticBaseUri(Ljava/lang/String;)V

    .line 4259
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x53
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseBinaryExpr(I)Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1673
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1676
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1677
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 1681
    :cond_0
    invoke-static {v1}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v2

    if-ge v2, p1, :cond_1

    return-object v0

    :cond_1
    const/16 v3, 0x25

    .line 1684
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    .line 1685
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1686
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    const-string v3, "instanceOf"

    const/4 v4, 0x2

    const/16 v5, 0x1a6

    const-string v6, "gnu.xquery.lang.XQParser"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v1, v5, :cond_4

    const/16 v9, 0x1a9

    if-gt v1, v9, :cond_4

    if-eq v1, v9, :cond_2

    const/16 v2, 0x1a8

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x43

    .line 1690
    iput v2, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1691
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v2

    .line 1692
    iput v7, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    new-array v4, v4, [Lgnu/expr/Expression;

    packed-switch v1, :pswitch_data_0

    aput-object v2, v4, v7

    aput-object v0, v4, v8

    .line 1717
    new-instance v0, Lgnu/expr/ReferenceExp;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_1

    :pswitch_0
    aput-object v0, v4, v7

    aput-object v2, v4, v8

    .line 1706
    new-instance v0, Lgnu/expr/ReferenceExp;

    sget-object v1, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    goto :goto_1

    :pswitch_1
    aput-object v2, v4, v7

    aput-object v0, v4, v8

    const-string v0, "treatAs"

    .line 1711
    invoke-static {v6, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    aput-object v0, v4, v7

    aput-object v2, v4, v8

    .line 1700
    invoke-static {v6, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1720
    :goto_1
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_2

    :cond_4
    if-ne v1, v5, :cond_5

    new-array v1, v4, [Lgnu/expr/Expression;

    aput-object v0, v1, v7

    .line 1724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    aput-object v0, v1, v8

    .line 1725
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-static {v6, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1731
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v2

    const/16 v3, 0x191

    if-ne v1, v3, :cond_6

    .line 1733
    new-instance v1, Lgnu/expr/IfExp;

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    sget-object v3, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v0, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x190

    if-ne v1, v3, :cond_7

    .line 1735
    new-instance v1, Lgnu/expr/IfExp;

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    sget-object v3, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_2

    .line 1737
    :cond_7
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1a6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseContent(CLjava/util/Vector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2273
    iput v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2274
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2276
    iget-boolean v3, p0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    const/16 v4, 0x3c

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v5, v3

    .line 2280
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    if-ne v6, p1, :cond_a

    if-ne p1, v4, :cond_9

    .line 2285
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    const/4 v7, 0x0

    .line 2287
    iget v8, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v8, :cond_1

    .line 2289
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v9, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v8, v0, v9}, Ljava/lang/String;-><init>([CII)V

    new-array v8, v2, [Lgnu/expr/Expression;

    .line 2290
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v0

    .line 2291
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v9, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v7, v9, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2293
    :cond_1
    iput v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_2

    if-eqz v7, :cond_18

    if-nez v5, :cond_18

    .line 2297
    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 2300
    :cond_2
    invoke-virtual {p0, v6, v2}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v6

    .line 2303
    instance-of v8, v6, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_4

    .line 2305
    move-object v8, v6

    check-cast v8, Lgnu/expr/ApplyExp;

    .line 2306
    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    if-ne v9, v10, :cond_4

    .line 2309
    invoke-virtual {v8, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2310
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-eqz v7, :cond_6

    if-eqz v5, :cond_5

    if-eqz v9, :cond_6

    .line 2314
    :cond_5
    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    if-eqz v9, :cond_7

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-nez v8, :cond_8

    .line 2320
    invoke-virtual {p2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2321
    :cond_8
    iput v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    goto :goto_1

    .line 2324
    :cond_9
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2326
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto/16 :goto_1

    :cond_a
    const/16 v7, 0x7b

    if-eq v6, p1, :cond_13

    if-ltz v6, :cond_13

    if-ne v6, v7, :cond_b

    goto :goto_5

    :cond_b
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_d

    .line 2371
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    if-ne v6, v7, :cond_c

    .line 2374
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_7

    :cond_c
    const-string v7, "unexpected \'}\' in element content"

    .line 2379
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_1

    :cond_d
    const/16 v7, 0x26

    if-ne v6, v7, :cond_e

    .line 2385
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    goto :goto_7

    :cond_e
    if-eq p1, v4, :cond_10

    const/16 v7, 0x9

    if-eq v6, v7, :cond_f

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    const/16 v7, 0xd

    if-ne v6, v7, :cond_10

    :cond_f
    const/16 v6, 0x20

    :cond_10
    if-ne v6, v4, :cond_11

    const/16 v7, 0x65

    const-string v8, "\'<\' must be quoted in a direct attribute value"

    .line 2394
    invoke-virtual {p0, v7, v8}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_11
    if-eqz v5, :cond_12

    int-to-char v5, v6

    .line 2396
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    :cond_12
    int-to-char v6, v6

    .line 2397
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto/16 :goto_1

    :cond_13
    :goto_5
    if-ne v6, v7, :cond_14

    .line 2332
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v8

    goto :goto_6

    :cond_14
    const/4 v8, -0x1

    :goto_6
    if-ne v8, v7, :cond_15

    .line 2335
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2342
    :cond_15
    iget v9, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v9, :cond_16

    if-nez v5, :cond_16

    .line 2343
    new-instance v7, Ljava/lang/String;

    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v10, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v9, v0, v10}, Ljava/lang/String;-><init>([CII)V

    goto :goto_8

    :cond_16
    if-ne v6, v7, :cond_17

    .line 2344
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v1, v7, :cond_17

    const-string v7, ""

    :goto_8
    new-array v9, v2, [Lgnu/expr/Expression;

    .line 2350
    new-instance v10, Lgnu/expr/QuoteExp;

    invoke-direct {v10, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v0

    .line 2351
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v7, v10, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2353
    :cond_17
    iput v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ne v6, p1, :cond_19

    :cond_18
    :goto_9
    return-void

    :cond_19
    if-gez v6, :cond_1a

    const-string v6, "unexpected end-of-file"

    .line 2357
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2360
    :cond_1a
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2361
    iget v1, p0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2362
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 2363
    invoke-virtual {p2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    iput v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2365
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    goto/16 :goto_0
.end method

.method public parseDataType()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseItemType()Lgnu/expr/Expression;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x19f

    const/16 v3, 0x19d

    const/16 v4, 0x3f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_3

    .line 1476
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xee

    if-eq v0, v1, :cond_0

    const-string v0, "bad syntax - expected DataType"

    .line 1477
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1478
    :cond_0
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1479
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1484
    :cond_1
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_1

    .line 1481
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "occurrence-indicator meaningless after empty-sequence()"

    .line 1482
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1488
    :cond_3
    iget v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v7, v4, :cond_4

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    if-ne v7, v3, :cond_5

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    if-ne v7, v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    .line 1508
    :goto_3
    iget v3, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v4, 0x43

    if-ne v3, v4, :cond_7

    if-eq v1, v6, :cond_7

    const-string v0, "type to \'cast as\' or \'castable as\' must be a \'SingleType\'"

    .line 1511
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_7
    if-eq v2, v1, :cond_8

    .line 1515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v0, v3, v5

    .line 1516
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1519
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v1, 0x4

    .line 1522
    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setFlag(I)V

    :cond_8
    return-object v0
.end method

.method parseElementConstructor()Lgnu/expr/Expression;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2570
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 2571
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 2573
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "comment not allowed in element start tag"

    .line 2574
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v5, v2

    .line 2580
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ltz v6, :cond_0

    int-to-char v8, v6

    .line 2581
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2583
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/16 v8, 0x2f

    const/16 v9, 0x3e

    if-ltz v6, :cond_13

    if-eq v6, v9, :cond_13

    if-ne v6, v8, :cond_1

    goto/16 :goto_b

    :cond_1
    if-nez v7, :cond_2

    const-string v7, "missing space before attribute"

    .line 2589
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2590
    :cond_2
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2591
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2592
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    .line 2593
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x41

    if-eq v10, v11, :cond_3

    const/16 v12, 0x51

    if-eq v10, v12, :cond_3

    goto/16 :goto_b

    .line 2595
    :cond_3
    new-instance v6, Ljava/lang/String;

    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v9, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v8, v3, v9}, Ljava/lang/String;-><init>([CII)V

    .line 2596
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v8

    add-int/2addr v8, v4

    .line 2597
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v9

    add-int/2addr v9, v4

    iget v10, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v9, v10

    .line 2599
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const-string v12, ""

    if-ne v10, v11, :cond_4

    const-string v10, "xmlns"

    .line 2601
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v12

    goto :goto_2

    :cond_4
    const-string v10, "xmlns:"

    .line 2606
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x6

    .line 2607
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v2

    :goto_2
    if-eqz v10, :cond_6

    move-object v11, v2

    goto :goto_3

    .line 2609
    :cond_6
    sget-object v11, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .line 2612
    :goto_3
    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-direct {v13, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v13, v3}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2613
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v6

    const/16 v13, 0x3d

    if-eq v6, v13, :cond_7

    .line 2616
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    const-string v0, "missing \'=\' after attribute"

    .line 2617
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2619
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v6

    .line 2620
    iget v13, p0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    const/16 v14, 0x7b

    if-ne v6, v14, :cond_8

    const-string v6, "enclosed attribute value expression should be quoted"

    .line 2623
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    int-to-char v6, v6

    .line 2627
    invoke-virtual {p0, v6, v1}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2628
    :goto_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    sub-int/2addr v6, v7

    if-eqz v10, :cond_11

    if-ne v6, v4, :cond_9

    :goto_5
    move-object v6, v12

    goto :goto_6

    .line 2634
    :cond_9
    iget v6, p0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    if-le v6, v13, :cond_a

    const-string v6, "enclosed expression not allowed in namespace declaration"

    .line 2635
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v7, 0x1

    .line 2638
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 2640
    instance-of v8, v6, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_b

    move-object v8, v6

    check-cast v8, Lgnu/expr/ApplyExp;

    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v9

    sget-object v11, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    if-ne v9, v11, :cond_b

    .line 2642
    invoke-virtual {v8, v3}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v6

    .line 2643
    :cond_b
    check-cast v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 2646
    :goto_6
    invoke-virtual {v1, v7}, Ljava/util/Vector;->setSize(I)V

    .line 2647
    invoke-virtual {p0, v10, v6, v4}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v10, v12, :cond_c

    move-object v10, v2

    :cond_c
    move-object v7, v5

    :goto_7
    if-eqz v7, :cond_f

    .line 2653
    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v8

    if-ne v8, v10, :cond_e

    const/16 v7, 0x65

    if-nez v10, :cond_d

    const-string v8, "duplicate default namespace declaration"

    goto :goto_8

    .line 2655
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate namespace prefix \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_8
    const-string v9, "XQST0071"

    invoke-virtual {p0, v7, v8, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 2651
    :cond_e
    invoke-virtual {v7}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v7

    goto :goto_7

    .line 2663
    :cond_f
    :goto_9
    new-instance v7, Lgnu/xml/NamespaceBinding;

    if-ne v6, v12, :cond_10

    move-object v6, v2

    :cond_10
    invoke-direct {v7, v10, v6, v5}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v5, v7

    goto/16 :goto_0

    .line 2670
    :cond_11
    new-array v10, v6, [Lgnu/expr/Expression;

    :goto_a
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_12

    add-int v12, v7, v6

    .line 2672
    invoke-virtual {v1, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/expr/Expression;

    aput-object v12, v10, v6

    goto :goto_a

    .line 2673
    :cond_12
    invoke-virtual {v1, v7}, Ljava/util/Vector;->setSize(I)V

    .line 2674
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v11, v10}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2675
    invoke-virtual {p0, v6, v8, v9}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2676
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2679
    :cond_13
    :goto_b
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    if-ne v6, v8, :cond_15

    .line 2683
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    if-ne v6, v9, :cond_14

    goto :goto_c

    .line 2687
    :cond_14
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->unread(I)V

    :cond_15
    const/4 v4, 0x0

    :goto_c
    if-nez v4, :cond_1a

    if-eq v6, v9, :cond_16

    const-string v0, "missing \'>\' after start element"

    .line 2692
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_16
    const/16 v4, 0x3c

    .line 2693
    invoke-virtual {p0, v4, v1}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2694
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v4

    if-ltz v4, :cond_19

    int-to-char v4, v4

    .line 2697
    invoke-static {v4}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v0, "invalid tag syntax after \'</\'"

    .line 2698
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2699
    :cond_17
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2700
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v6, v3, v7}, Ljava/lang/String;-><init>([CII)V

    .line 2701
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">\' closed by \'</"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, "comment not allowed in element end tag"

    .line 2703
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2704
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v4

    .line 2705
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    :cond_19
    if-eq v4, v9, :cond_1a

    const-string v0, "missing \'>\' after end element"

    .line 2708
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2710
    :cond_1a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 2711
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2712
    new-instance v1, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v1}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 2713
    iget v2, p0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    iput v2, v1, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 2717
    invoke-virtual {v1, v5}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 2718
    new-instance v2, Lgnu/expr/ApplyExp;

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method parseEnclosedExpr()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2408
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2409
    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    const/16 v1, 0x7b

    .line 2410
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    const-string v2, "unexpected end-of-file after \'{\'"

    .line 2411
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2413
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2414
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    .line 2418
    :goto_0
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x29

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x2c

    if-eq v5, v6, :cond_2

    const-string v4, "missing \'}\' or \',\'"

    .line 2426
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_1

    .line 2428
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2430
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0

    :cond_3
    :goto_2
    const-string v4, "missing \'}\'"

    .line 2422
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 2433
    :goto_3
    invoke-virtual {p0, v4, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2434
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2435
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    return-object v4
.end method

.method parseEntityOrCharRef()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2197
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v1, 0x3b

    const/16 v2, 0x23

    if-ne v0, v2, :cond_9

    .line 2201
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    .line 2205
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    move v0, v2

    const/16 v2, 0x10

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ltz v0, :cond_3

    int-to-char v4, v0

    .line 2213
    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v5, 0x8000000

    if-lt v3, v5, :cond_2

    goto :goto_2

    :cond_2
    mul-int v3, v3, v2

    add-int/2addr v3, v4

    .line 2220
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    .line 2224
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const-string v0, "invalid character reference"

    .line 2225
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    if-lez v3, :cond_5

    const v0, 0xd7ff

    if-le v3, v0, :cond_7

    :cond_5
    const v0, 0xe000

    if-lt v3, v0, :cond_6

    const v0, 0xfffd

    if-le v3, v0, :cond_7

    :cond_6
    const/high16 v0, 0x10000

    if-lt v3, v0, :cond_8

    const v0, 0x10ffff

    if-gt v3, v0, :cond_8

    .line 2231
    :cond_7
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_5

    :cond_8
    const/16 v0, 0x65

    .line 2233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XQST0090"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2237
    :cond_9
    iget v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    :goto_3
    if-ltz v0, :cond_b

    int-to-char v3, v0

    .line 2241
    invoke-static {v3}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    .line 2243
    :cond_a
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2244
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    goto :goto_3

    :cond_b
    :goto_4
    if-eq v0, v1, :cond_c

    .line 2248
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const-string v0, "invalid entity reference"

    .line 2249
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    return-void

    .line 2252
    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2254
    iput v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2255
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->appendNamedEntity(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method parseExpr()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseExprSequence(IZ)Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2752
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, p1, :cond_7

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p2, 0x0

    .line 2761
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 2763
    :cond_1
    invoke-static {p2, v0}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p2

    .line 2764
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, p1, :cond_6

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 2766
    :cond_2
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v0, :cond_3

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    return-object p2

    .line 2768
    :cond_3
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_5

    const/16 p2, 0x29

    if-ne p1, p2, :cond_4

    const-string p1, "expected \')\'"

    goto :goto_2

    :cond_4
    const-string p1, "confused by syntax error"

    .line 2769
    :goto_2
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 2771
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_6
    :goto_3
    return-object p2

    :cond_7
    :goto_4
    if-nez p2, :cond_8

    const-string p1, "missing expression"

    .line 2755
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2756
    :cond_8
    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p1
.end method

.method final parseExprSingle()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1647
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x190

    .line 1666
    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1664
    :pswitch_0
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1662
    :pswitch_1
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1660
    :pswitch_2
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1658
    :pswitch_3
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1656
    :pswitch_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseTypeSwitch()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1654
    :pswitch_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIfExpr()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseFLWRExpression(Z)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3208
    iget v0, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3209
    iget v1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iput v1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3210
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v1

    const-string v2, "order"

    .line 3212
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0x6c

    .line 3214
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result p1

    .line 3215
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "by"

    .line 3216
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3217
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    :cond_1
    const-string v0, "missing \'by\' following \'order\'"

    .line 3219
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3220
    :goto_1
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 3224
    :goto_2
    iget-char v0, p0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 3226
    new-instance v3, Lgnu/expr/LambdaExp;

    iget v4, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v4, v5

    invoke-direct {v3, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3227
    iget v4, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    :goto_3
    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v4, v5, :cond_2

    .line 3228
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3229
    :cond_2
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3230
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v4

    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3231
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3232
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ascending"

    .line 3234
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 3235
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    :cond_3
    const-string v3, "descending"

    .line 3236
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3238
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v3, 0x0

    :goto_5
    const-string v6, "empty"

    .line 3241
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3243
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v6, "greatest"

    .line 3244
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3246
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v0, 0x47

    goto :goto_6

    :cond_5
    const-string v6, "least"

    .line 3249
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3251
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v0, 0x4c

    goto :goto_6

    :cond_6
    const-string v6, "\'empty\' sequence order must be \'greatest\' or \'least\'"

    .line 3255
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3258
    :cond_7
    :goto_6
    new-instance v6, Lgnu/expr/QuoteExp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_8

    const-string v3, "D"

    goto :goto_7

    :cond_8
    const-string v3, "A"

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    const-string v3, "collation"

    .line 3260
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3262
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v3

    .line 3263
    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 3267
    :try_start_0
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3268
    invoke-static {v6}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const/16 v6, 0x65

    .line 3272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown collation \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "XQST0076"

    invoke-virtual {p0, v6, v3, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3275
    :cond_9
    :goto_8
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3277
    :cond_a
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_e

    const-string v0, "return"

    .line 3282
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string p1, "expected \'return\' clause"

    .line 3283
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3284
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3286
    new-instance v0, Lgnu/expr/LambdaExp;

    iget v3, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v6, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v3, v6

    invoke-direct {v0, v3}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3288
    iget v3, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    :goto_9
    iget v6, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v3, v6, :cond_c

    .line 3289
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3290
    :cond_c
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3291
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3292
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3293
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3294
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result p1

    add-int/lit8 v3, p1, 0x2

    .line 3295
    new-array v3, v3, [Lgnu/expr/Expression;

    .line 3296
    aput-object v1, v3, v4

    .line 3297
    aput-object v0, v3, v5

    :goto_a
    if-ge v4, p1, :cond_d

    add-int/lit8 v0, v4, 0x2

    .line 3299
    invoke-virtual {v2, v4}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    aput-object v1, v3, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3300
    :cond_d
    new-instance p1, Lgnu/expr/ApplyExp;

    const-string v0, "gnu.xquery.util.OrderedMap"

    const-string v1, "orderedMap"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1

    .line 3280
    :cond_e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto/16 :goto_2

    .line 3305
    :cond_f
    iget p1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    iput p1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    .line 3306
    iput v0, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    return-object v1
.end method

.method public parseFLWRInner(Z)Lgnu/expr/Expression;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    const/16 v0, 0x6c

    .line 3321
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    const/16 v1, 0x24

    .line 3322
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3323
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing Variable - saw "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->tokenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3326
    :cond_1
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const/16 v3, 0x8

    new-array v3, v3, [Lgnu/expr/Declaration;

    .line 3327
    iput-object v3, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    goto :goto_1

    .line 3328
    :cond_2
    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    array-length v6, v3

    if-lt v5, v6, :cond_3

    mul-int/lit8 v6, v5, 0x2

    .line 3330
    new-array v6, v6, [Lgnu/expr/Declaration;

    .line 3331
    invoke-static {v3, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    iput-object v6, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    .line 3334
    :cond_3
    :goto_1
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    aput-object v2, v3, v5

    .line 3335
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3337
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Lgnu/expr/Expression;

    const-string v7, "in"

    const/16 v8, 0x4c

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz p1, :cond_a

    const-string v11, "at"

    .line 3343
    invoke-virtual {p0, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    .line 3344
    new-instance v12, Lgnu/expr/LambdaExp;

    if-eqz v11, :cond_4

    const/4 v13, 0x2

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    :goto_2
    invoke-direct {v12, v13}, Lgnu/expr/LambdaExp;-><init>(I)V

    if-eqz v11, :cond_6

    .line 3347
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3348
    iget v11, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v11, v1, :cond_5

    .line 3350
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v11

    .line 3351
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_3

    :cond_5
    move-object v11, v10

    :goto_3
    if-nez v11, :cond_7

    const-string v13, "missing Variable after \'at\'"

    .line 3354
    invoke-virtual {p0, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_4

    :cond_6
    move-object v11, v10

    .line 3357
    :cond_7
    :goto_4
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3358
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_6

    .line 3361
    :cond_8
    iget v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v7, v8, :cond_9

    .line 3362
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_9
    const-string v7, "missing \'in\' in \'for\' clause"

    .line 3363
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_6

    .line 3368
    :cond_a
    iget v11, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v11, v8, :cond_b

    .line 3369
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_5

    .line 3372
    :cond_b
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3373
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_c
    const-string v7, "missing \':=\' in \'let\' clause"

    .line 3374
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3376
    :goto_5
    new-instance v12, Lgnu/expr/LetExp;

    invoke-direct {v12, v6}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v11, v10

    .line 3379
    :goto_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, v6, v4

    if-eqz v3, :cond_d

    if-nez p1, :cond_d

    .line 3381
    invoke-static {v7, v3}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v7

    aput-object v7, v6, v4

    .line 3382
    :cond_d
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3383
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0, v12}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3384
    invoke-virtual {v12, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    if-eqz v3, :cond_e

    .line 3386
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    :cond_e
    const-wide/32 v7, 0x40000

    if-eqz p1, :cond_f

    .line 3389
    invoke-virtual {v2, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3390
    invoke-virtual {v2, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_f
    if-eqz v11, :cond_10

    .line 3394
    invoke-virtual {v12, v11}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3395
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v11, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 3396
    invoke-virtual {v11, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3397
    invoke-virtual {v11, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3400
    :cond_10
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_12

    .line 3402
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3403
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v1, :cond_11

    const-string p1, "missing $NAME after \',\'"

    .line 3404
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3405
    :cond_11
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_12
    const-string v0, "for"

    .line 3407
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3409
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3410
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v1, :cond_13

    const-string p1, "missing $NAME after \'for\'"

    .line 3411
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3412
    :cond_13
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_14
    const-string v2, "let"

    .line 3414
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3416
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3417
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v1, :cond_15

    const-string p1, "missing $NAME after \'let\'"

    .line 3418
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3419
    :cond_15
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto/16 :goto_a

    :cond_16
    const/16 v1, 0x77

    .line 3424
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 3425
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0xc4

    if-ne v3, v7, :cond_17

    .line 3427
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3428
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v10

    goto :goto_7

    :cond_17
    const-string v3, "where"

    .line 3430
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3432
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v10

    .line 3436
    :cond_18
    :goto_7
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    const-string v1, "stable"

    .line 3437
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3439
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_19
    const-string v1, "return"

    .line 3440
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "order"

    .line 3441
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v1, :cond_1a

    if-nez v3, :cond_1a

    .line 3442
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, "missing \'return\' clause"

    .line 3443
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_1a
    if-nez v3, :cond_1b

    const-string v0, "unexpected eof-of-file after \'return\'"

    .line 3445
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3446
    :cond_1b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v5

    .line 3447
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v5

    if-eqz v1, :cond_1c

    .line 3449
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_1c
    if-eqz v3, :cond_1e

    .line 3452
    iget v1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v3, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v1, v3

    .line 3453
    new-array v3, v1, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v1, :cond_1d

    .line 3455
    new-instance v8, Lgnu/expr/ReferenceExp;

    iget-object v11, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    iget v13, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    add-int/2addr v13, v7

    aget-object v11, v11, v13

    invoke-direct {v8, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 3456
    :cond_1d
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/PrimProcedure;

    const-string v8, "gnu.xquery.util.OrderedMap"

    const-string v11, "makeTuple$V"

    invoke-direct {v7, v8, v11, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v7, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_9

    .line 3461
    :cond_1e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v1

    :goto_9
    if-eqz v10, :cond_1f

    .line 3463
    new-instance v3, Lgnu/expr/IfExp;

    invoke-static {v10}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    sget-object v8, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v3, v7, v1, v8}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v1, v3

    .line 3464
    :cond_1f
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    move-object v0, v1

    .line 3466
    :goto_a
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1, v12}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    if-eqz p1, :cond_21

    .line 3469
    move-object p1, v12

    check-cast p1, Lgnu/expr/LambdaExp;

    .line 3470
    iput-object v0, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    new-array v0, v9, [Lgnu/expr/Expression;

    aput-object v12, v0, v4

    aget-object v1, v6, v4

    aput-object v1, v0, v5

    .line 3472
    new-instance v1, Lgnu/expr/ApplyExp;

    iget p1, p1, Lgnu/expr/LambdaExp;->min_args:I

    if-ne p1, v5, :cond_20

    const-string p1, "valuesMap"

    goto :goto_b

    :cond_20
    const-string p1, "valuesMapWithPos"

    :goto_b
    const-string v2, "gnu.kawa.functions.ValuesMap"

    invoke-static {v2, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    .line 3478
    :cond_21
    move-object p1, v12

    check-cast p1, Lgnu/expr/LetExp;

    invoke-virtual {p1, v0}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    return-object v12
.end method

.method public parseFunctionDefinition(II)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3544
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    const-string p1, "missing function name"

    .line 3545
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3546
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3547
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v1, v2, v3, v4}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    const/4 v1, 0x1

    .line 3548
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 3549
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    if-eq v3, v5, :cond_5

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    if-eq v3, v5, :cond_5

    const-string v5, "http://www.w3.org/2001/XMLSchema-instance"

    if-eq v3, v5, :cond_5

    const-string v5, "http://www.w3.org/2005/xpath-functions"

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    if-ne v3, v5, :cond_3

    .line 3561
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x77

    :goto_0
    const-string v3, "cannot declare function in empty namespace"

    const-string v5, "XQST0060"

    invoke-virtual {p0, v4, v3, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3565
    :cond_3
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v5, :cond_6

    if-eq v3, v5, :cond_6

    const-string v5, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const-string v3, "function not in namespace of library module"

    const-string v5, "XQST0048"

    .line 3568
    invoke-virtual {p0, v4, v3, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3555
    :cond_5
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot declare function in standard namespace \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "XQST0045"

    invoke-virtual {p0, v4, v3, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3571
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x28

    if-eq v3, v4, :cond_7

    .line 3572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "missing parameter list:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3573
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3574
    new-instance v3, Lgnu/expr/LambdaExp;

    invoke-direct {v3}, Lgnu/expr/LambdaExp;-><init>()V

    .line 3575
    invoke-virtual {p0, v3, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3576
    invoke-virtual {v3, v0}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 3577
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 3578
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v4, 0x800

    .line 3579
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    :cond_8
    const/16 v2, 0x800

    .line 3580
    invoke-virtual {v3, v2}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 3581
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3582
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 3583
    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3584
    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3585
    iget p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 p2, 0x29

    if-eq p1, p2, :cond_10

    .line 3590
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "missing parameter name"

    .line 3592
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 3595
    :cond_9
    invoke-virtual {v3, p1}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3596
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3597
    iget v2, v3, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v2, v1

    iput v2, v3, Lgnu/expr/LambdaExp;->min_args:I

    .line 3598
    iget v2, v3, Lgnu/expr/LambdaExp;->max_args:I

    add-int/2addr v2, v1

    iput v2, v3, Lgnu/expr/LambdaExp;->max_args:I

    .line 3599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3601
    :goto_4
    iget p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne p1, p2, :cond_a

    goto :goto_6

    :cond_a
    const/16 v2, 0x2c

    if-eq p1, v2, :cond_f

    const-string p1, "missing \',\' in parameter list"

    .line 3605
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    .line 3608
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3609
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ltz v4, :cond_e

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_e

    if-ne v4, v5, :cond_c

    goto :goto_5

    :cond_c
    if-ne v4, p2, :cond_d

    goto :goto_6

    :cond_d
    if-ne v4, v2, :cond_b

    goto :goto_3

    :cond_e
    :goto_5
    return-object p1

    .line 3618
    :cond_f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_3

    .line 3621
    :cond_10
    :goto_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3622
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object p1

    .line 3623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3624
    iget-object p2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    if-eqz p1, :cond_11

    .line 3626
    iget-object p2, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v3, p1, p2}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 3627
    :cond_11
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v0, v3}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 3628
    invoke-virtual {p1, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 3629
    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    return-object p1
.end method

.method public parseIfExpr()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x69

    .line 3135
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    .line 3136
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v1, 0x28

    .line 3137
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    const/16 v2, 0x29

    const/4 v3, 0x0

    .line 3138
    invoke-virtual {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v2

    .line 3139
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3140
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v1, "missing \')\' - unexpected end-of-file"

    .line 3141
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v1, "then"

    .line 3143
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "missing \'then\'"

    .line 3144
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0

    .line 3146
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3147
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v1

    const-string v3, "else"

    .line 3148
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "missing \'else\'"

    .line 3149
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 3151
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3152
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3153
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 3154
    new-instance v3, Lgnu/expr/IfExp;

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v3, v2, v1, v0}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v3
.end method

.method parseIntersectExceptExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1784
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v1

    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1a5

    if-eq v1, v2, :cond_0

    return-object v0

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1788
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 1789
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method public parseItemType()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1587
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1591
    iget v1, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 1593
    sget-object v0, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    :cond_0
    return-object v0

    .line 1597
    :cond_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xed

    if-ne v0, v1, :cond_2

    .line 1599
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1600
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v0

    .line 1613
    :goto_0
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x41

    if-eq v0, v1, :cond_4

    const/16 v1, 0x51

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 1604
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1605
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    const/16 v0, 0x10

    .line 1606
    invoke-virtual {v1, v0}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 1607
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 1608
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    return-object v1
.end method

.method public parseMaybeKindTest()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1536
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v2

    :pswitch_0
    const/16 v2, 0xec

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 1540
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNamedNodeType(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1553
    :pswitch_1
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1554
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1563
    :pswitch_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1565
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x41

    if-eq v0, v3, :cond_1

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    .line 1567
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1568
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1570
    :cond_2
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_3

    .line 1571
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_3
    const-string v0, "expected \')\'"

    .line 1573
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1574
    :goto_0
    invoke-static {v2}, Lgnu/kawa/xml/ProcessingInstructionType;->getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;

    move-result-object v0

    goto :goto_1

    .line 1548
    :pswitch_3
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1549
    sget-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1543
    :pswitch_4
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1544
    sget-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    goto :goto_1

    .line 1558
    :pswitch_5
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1559
    sget-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1580
    :goto_1
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseMaybePrimaryExpr()Lgnu/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2867
    iget v1, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2868
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2869
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v3

    const/16 v4, 0x22

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x28

    if-eq v3, v4, :cond_2b

    const/16 v6, 0x46

    const/16 v7, 0x2c

    const/4 v8, 0x0

    const/16 v9, 0x29

    const/16 v10, 0xa

    if-eq v3, v6, :cond_27

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_26

    const/16 v6, 0xc5

    const/4 v12, -0x1

    const/16 v13, 0x41

    const/16 v14, 0x51

    const/16 v15, 0x7d

    if-eq v3, v6, :cond_1b

    const/16 v6, 0x194

    if-eq v3, v6, :cond_16

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    return-object v8

    .line 3028
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3029
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/16 v8, 0xfe

    const/16 v9, 0x100

    const/16 v10, 0xff

    const/16 v12, 0xfb

    if-eq v3, v12, :cond_7

    const/16 v11, 0xfc

    if-ne v3, v11, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v9, :cond_1

    const-string v11, "gnu.kawa.xml.DocumentConstructor"

    const-string v13, "documentConstructor"

    .line 3053
    invoke-static {v11, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    goto/16 :goto_7

    :cond_1
    if-ne v3, v8, :cond_2

    const-string v11, "gnu.kawa.xml.CommentConstructor"

    const-string v13, "commentConstructor"

    .line 3056
    invoke-static {v11, v13}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    goto/16 :goto_7

    :cond_2
    if-ne v3, v10, :cond_6

    .line 3061
    iget v11, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v11, v13, :cond_3

    .line 3062
    new-instance v11, Lgnu/expr/QuoteExp;

    new-instance v13, Ljava/lang/String;

    iget-object v14, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v9, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v13, v14, v5, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-ne v11, v4, :cond_4

    .line 3066
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v11

    goto :goto_0

    :cond_4
    const-string v9, "expected NCName or \'{\' after \'processing-instruction\'"

    .line 3070
    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .line 3071
    iget v9, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v9, v14, :cond_5

    return-object v11

    .line 3074
    :cond_5
    :goto_0
    invoke-virtual {v6, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v9, "gnu.kawa.xml.MakeProcInst"

    const-string v11, "makeProcInst"

    .line 3075
    invoke-static {v9, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    .line 3077
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_7

    :cond_6
    const-string v9, "gnu.kawa.xml.MakeText"

    const-string v11, "makeText"

    .line 3080
    invoke-static {v9, v11}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v11

    goto :goto_7

    .line 3035
    :cond_7
    :goto_1
    iget v9, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v9, v13, :cond_a

    if-ne v9, v14, :cond_8

    goto :goto_2

    :cond_8
    if-ne v9, v4, :cond_9

    .line 3038
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_4

    :cond_9
    const-string v1, "missing element/attribute name"

    .line 3040
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_2
    if-eq v3, v12, :cond_b

    const/4 v9, 0x1

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    .line 3036
    :goto_3
    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v9

    :goto_4
    if-ne v3, v12, :cond_c

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    .line 3041
    :goto_5
    invoke-static {v9, v11}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-ne v3, v12, :cond_d

    .line 3044
    new-instance v9, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v9}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 3045
    iget v11, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    iput v11, v9, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 3046
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    .line 3049
    :cond_d
    sget-object v9, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object v11, v9

    .line 3050
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3082
    :goto_7
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v9

    const-string v13, "unexpected end-of-file after \'{\'"

    .line 3083
    invoke-virtual {v0, v13}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3084
    iget v13, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v13, v4, :cond_e

    const-string v1, "missing \'{\'"

    .line 3085
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3086
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v4, 0xfd

    if-eq v3, v4, :cond_10

    if-eq v3, v8, :cond_10

    if-ne v3, v10, :cond_f

    goto :goto_9

    .line 3090
    :cond_f
    iget v4, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v4, v15, :cond_12

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3093
    :goto_8
    iget v4, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v4, v7, :cond_12

    .line 3095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    :goto_9
    if-ne v3, v10, :cond_11

    const/4 v5, 0x1

    .line 3089
    :cond_11
    invoke-virtual {v0, v15, v5}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3099
    :cond_12
    invoke-virtual {v0, v9}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3100
    iget v4, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v4, v15, :cond_13

    const-string v1, "missing \'}\'"

    .line 3101
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3102
    :cond_13
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 3103
    invoke-virtual {v6, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3104
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v11, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3105
    invoke-virtual {v0, v5, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    const/16 v1, 0x100

    if-eq v3, v1, :cond_14

    if-ne v3, v12, :cond_2f

    .line 3107
    :cond_14
    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_14

    .line 3112
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3113
    invoke-virtual {v0, v15, v5}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_14

    .line 2972
    :pswitch_2
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v1, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v2, 0x31

    if-ne v3, v2, :cond_15

    .line 2977
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 2979
    :cond_15
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2980
    :goto_a
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_14

    .line 2984
    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid decimal literal: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_14

    .line 2966
    :pswitch_3
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-static {v2, v5, v3, v10, v5}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 2937
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1a

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2942
    iget v3, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v13, :cond_18

    if-eq v3, v14, :cond_18

    const/16 v4, 0x43

    if-ne v3, v4, :cond_17

    goto :goto_b

    :cond_17
    const-string v3, "saw end tag \'</\' not in an element constructor"

    goto :goto_c

    .line 2944
    :cond_18
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saw end tag \'</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v6, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">\' not in an element constructor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2947
    :goto_c
    iput v1, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2948
    iput v2, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2949
    invoke-virtual {v0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2950
    :goto_d
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x195

    if-eq v2, v3, :cond_19

    if-eq v2, v12, :cond_19

    if-eq v2, v10, :cond_19

    .line 2951
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_d

    :cond_19
    return-object v1

    .line 2956
    :cond_1a
    invoke-virtual {v0, v3, v5}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v5

    .line 2957
    invoke-virtual {v0, v5, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto/16 :goto_14

    .line 2881
    :cond_1b
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 2884
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2886
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v14, :cond_1d

    if-eq v2, v13, :cond_1d

    const-string v2, "missing pragma name"

    .line 2887
    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_e

    .line 2889
    :cond_1d
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 2890
    :goto_e
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, -0x1

    .line 2894
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v3, v8

    if-ltz v7, :cond_1f

    int-to-char v8, v7

    .line 2895
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1f
    move v8, v3

    :goto_f
    const/16 v3, 0x23

    if-ne v7, v3, :cond_23

    .line 2896
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-eq v3, v9, :cond_20

    goto :goto_10

    .line 2906
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 2907
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2909
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v6, :cond_1c

    if-ne v2, v4, :cond_22

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2915
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v15, :cond_21

    .line 2917
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 2918
    invoke-virtual {v0, v15, v5}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2920
    iget v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v12, :cond_21

    const-string v2, "missing \'}\' - unexpected end-of-file"

    .line 2921
    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2923
    :cond_21
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 2924
    invoke-virtual {v1, v2}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 2925
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/ReferenceExp;

    sget-object v3, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    invoke-direct {v1, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v5, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_14

    :cond_22
    const-string v1, "missing \'{\' after pragma"

    .line 2928
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto/16 :goto_14

    :cond_23
    :goto_10
    if-gez v7, :cond_24

    const-string v3, "pragma ended by end-of-file"

    .line 2899
    invoke-virtual {v0, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_24
    if-nez v8, :cond_25

    const-string v3, "missing space between pragma and extension content"

    .line 2901
    invoke-virtual {v0, v3}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    :cond_25
    int-to-char v3, v7

    .line 2903
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    const/4 v8, 0x1

    goto :goto_f

    :cond_26
    const-string v1, "saw unexpected \'{\' - assume you meant \'(\'"

    .line 2932
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 2933
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    goto/16 :goto_14

    .line 2995
    :cond_27
    new-instance v3, Ljava/lang/String;

    iget-object v6, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v11, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v6, v5, v11}, Ljava/lang/String;-><init>([CII)V

    .line 2996
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v4

    .line 2997
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2998
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5, v10}, Ljava/util/Vector;-><init>(I)V

    .line 2999
    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v6, v9, :cond_2a

    .line 3003
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    .line 3004
    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3005
    iget v6, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v6, v9, :cond_28

    goto :goto_12

    :cond_28
    if-eq v6, v7, :cond_29

    const-string v1, "missing \')\' after function call"

    .line 3008
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3009
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_11

    .line 3012
    :cond_2a
    :goto_12
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 3014
    invoke-virtual {v5, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3015
    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v3, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    const/4 v3, 0x1

    .line 3016
    invoke-virtual {v5, v3}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 3017
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3018
    invoke-virtual {v0, v3, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3019
    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    move-object v5, v3

    goto :goto_14

    .line 2877
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_14

    .line 2988
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string v1, "missing Variable"

    .line 2990
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 2991
    :cond_2d
    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 2992
    iget v1, v0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v2, v0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v0, v5, v1, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    goto :goto_14

    .line 2962
    :cond_2e
    new-instance v1, Lgnu/expr/QuoteExp;

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    :goto_13
    move-object v5, v1

    .line 3128
    :cond_2f
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseNameTest(Z)Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1829
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x3a

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x51

    if-ne v0, v6, :cond_1

    .line 1831
    iget p1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 1832
    :goto_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    add-int/lit8 p1, p1, -0x1

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    invoke-direct {v4, v0, v5, p1}, Ljava/lang/String;-><init>([CII)V

    add-int/2addr p1, v2

    .line 1835
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v6, p1

    invoke-direct {v0, v1, p1, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x19f

    const/16 v7, 0x2a

    const/16 v8, 0x41

    if-ne v0, v6, :cond_7

    .line 1840
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 1843
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-gez p1, :cond_3

    const-string v0, "unexpected end-of-file after \'*:\'"

    .line 1848
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_3
    int-to-char v0, p1

    .line 1849
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1851
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1852
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1853
    iget p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq p1, v8, :cond_4

    const-string p1, "invalid name test"

    .line 1854
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 1856
    :cond_4
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {p1, v0, v5, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    if-eq p1, v7, :cond_6

    const-string p1, "missing local-name after \'*:\'"

    .line 1860
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1862
    :cond_6
    :goto_1
    new-instance p1, Lgnu/mapping/Symbol;

    invoke-direct {p1, v4, v3}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-static {p1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    return-object p1

    :cond_7
    if-ne v0, v8, :cond_8

    .line 1866
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v5, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz p1, :cond_b

    .line 1868
    new-instance p1, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-direct {p1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    const/16 p1, 0x43

    if-ne v0, p1, :cond_a

    .line 1873
    new-instance v4, Ljava/lang/String;

    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, p1, v5, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1874
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-eq p1, v7, :cond_9

    const-string p1, "invalid characters after \'NCName:\'"

    .line 1876
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_9
    move-object v0, v3

    goto :goto_2

    :cond_a
    move-object v0, v4

    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    .line 1880
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_c
    const/4 p1, 0x3

    new-array v1, p1, [Lgnu/expr/Expression;

    .line 1882
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    new-array v8, v2, [Lgnu/expr/Expression;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-direct {v6, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v6, v1, v5

    .line 1884
    new-instance v5, Lgnu/expr/QuoteExp;

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    move-object v3, v0

    :goto_3
    invoke-direct {v5, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const/4 v0, 0x2

    .line 1885
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-direct {v2, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    .line 1886
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v3, "make"

    invoke-virtual {v2, v3, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    const/4 p1, 0x4

    .line 1889
    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setFlag(I)V

    return-object v0
.end method

.method public parseNamedNodeType(Z)Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1396
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1398
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 1399
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    :cond_0
    const/16 v3, 0x41

    const/16 v4, 0x51

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x19f

    if-eq v0, v5, :cond_2

    const-string v0, "expected QName or *"

    .line 1408
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1409
    :cond_2
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    goto :goto_1

    .line 1404
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v0

    .line 1412
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1413
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    .line 1415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1416
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v5, v4, :cond_5

    if-ne v5, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "expected QName"

    .line 1421
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_3

    .line 1418
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v2

    .line 1423
    :cond_6
    :goto_3
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v3, v1, :cond_7

    .line 1424
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    :cond_7
    const-string v1, "expected \')\' after element"

    .line 1426
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1428
    :goto_4
    invoke-static {p1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method parseNodeTest(I)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    const/4 v0, 0x1

    new-array v1, v0, [Lgnu/expr/Expression;

    .line 1899
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    aput-object v2, v1, v3

    goto :goto_3

    .line 1905
    :cond_0
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0x51

    if-eq v4, v5, :cond_3

    const/16 v5, 0x43

    if-eq v4, v5, :cond_3

    const/16 v5, 0x19f

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported axis \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v6

    :cond_3
    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-ne p1, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 1908
    :goto_2
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v5, v4, v6}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1917
    :goto_3
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v4, v4, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, "node test when context item is undefined"

    const-string v5, "XPDY0002"

    .line 1920
    invoke-virtual {p0, v4, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_4

    .line 1922
    :cond_6
    new-instance v6, Lgnu/expr/ReferenceExp;

    invoke-direct {v6, v5, v4}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v4, v6

    :goto_4
    if-nez v2, :cond_7

    .line 1924
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_7
    const/4 v2, 0x3

    const/4 v5, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_6

    :cond_8
    if-ne p1, v5, :cond_9

    .line 1930
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    goto :goto_7

    :cond_9
    packed-switch p1, :pswitch_data_0

    .line 1946
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :pswitch_1
    const-string p1, "Self"

    goto :goto_5

    :pswitch_2
    const-string p1, "PrecedingSibling"

    goto :goto_5

    :pswitch_3
    const-string p1, "Preceding"

    goto :goto_5

    :pswitch_4
    const-string p1, "Parent"

    goto :goto_5

    :pswitch_5
    const-string p1, "FollowingSibling"

    goto :goto_5

    :pswitch_6
    const-string p1, "Following"

    goto :goto_5

    :pswitch_7
    const-string p1, "DescendantOrSelf"

    goto :goto_5

    :pswitch_8
    const-string p1, "Attribute"

    goto :goto_5

    :pswitch_9
    const-string p1, "AncestorOrSelf"

    goto :goto_5

    :pswitch_a
    const-string p1, "Ancestor"

    .line 1948
    :goto_5
    new-instance v2, Lgnu/expr/PrimProcedure;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gnu.kawa.xml."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Axis"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "make"

    invoke-direct {v2, p1, v6, v0}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    goto :goto_7

    .line 1928
    :cond_a
    :goto_6
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1953
    :goto_7
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1954
    invoke-virtual {v2, v5}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1955
    new-instance p1, Lgnu/expr/ApplyExp;

    new-array v0, v0, [Lgnu/expr/Expression;

    aput-object v4, v0, v3

    invoke-direct {p1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseOptionalTypeDeclaration()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const-string v0, "as"

    .line 1463
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1466
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseParenExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2740
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v0, 0x28

    .line 2741
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    const/16 v1, 0x29

    const/4 v2, 0x1

    .line 2742
    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v1

    .line 2743
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2744
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v0, "missing \')\' - unexpected end-of-file"

    .line 2745
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method parsePathExpr()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1798
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_2

    .line 1800
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "context item is undefined"

    const-string v1, "XPDY0002"

    .line 1803
    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_1

    .line 1805
    :cond_2
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v1, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v0, v3

    .line 1806
    :goto_1
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.xquery.util.NodeUtils"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "rootDocument"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v4, v5, [Lgnu/expr/Expression;

    aput-object v0, v4, v2

    invoke-direct {v1, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1809
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    .line 1810
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    if-ltz v0, :cond_5

    const/16 v2, 0x29

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 1819
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    return-object v1
.end method

.method parsePrimaryExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2183
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "missing expression"

    .line 2186
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2187
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2188
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_0
    return-object v0
.end method

.method public parseQuantifiedExpr(Z)Lgnu/expr/Expression;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x65

    goto :goto_0

    :cond_0
    const/16 v0, 0x73

    .line 3488
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    const/16 v1, 0x24

    .line 3489
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3490
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing Variable token:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3493
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3495
    new-instance v3, Lgnu/expr/LambdaExp;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3496
    invoke-virtual {v3, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    const/4 v5, 0x0

    .line 3497
    invoke-virtual {v2, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const-wide/32 v5, 0x40000

    .line 3498
    invoke-virtual {v2, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3499
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    const-string v2, "in"

    .line 3501
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3502
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    .line 3505
    :cond_2
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_3

    .line 3506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    :cond_3
    const-string v2, "missing \'in\' in QuantifiedExpr"

    .line 3507
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :goto_1
    new-array v2, v4, [Lgnu/expr/Expression;

    .line 3509
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 3510
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3511
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3513
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x2c

    const-string v7, "some"

    const-string v8, "every"

    if-ne v0, v5, :cond_5

    .line 3515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3516
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v1, :cond_4

    const-string p1, "missing $NAME after \',\'"

    .line 3517
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 3518
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "satisfies"

    .line 3522
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3523
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "missing \'satisfies\' clause"

    .line 3524
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "unexpected eof-of-file after \'satisfies\'"

    .line 3525
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3526
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v1

    add-int/2addr v1, v4

    .line 3527
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v5

    add-int/2addr v5, v4

    if-eqz v0, :cond_7

    .line 3529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3530
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v0

    .line 3531
    invoke-virtual {p0, v0, v1, v5}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3533
    :goto_2
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3534
    iput-object v0, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    aput-object v3, v0, v6

    aget-object v1, v2, v6

    aput-object v1, v0, v4

    .line 3536
    new-instance v1, Lgnu/expr/ApplyExp;

    if-eqz p1, :cond_8

    move-object v7, v8

    :cond_8
    const-string p1, "gnu.xquery.util.ValuesEvery"

    invoke-static {p1, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1969
    :goto_0
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x44

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    return-object p1

    :cond_1
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1973
    :goto_2
    new-instance v3, Lgnu/expr/LambdaExp;

    const/4 v7, 0x3

    invoke-direct {v3, v7}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1974
    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v7}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v8

    const-wide/32 v9, 0x40000

    .line 1975
    invoke-virtual {v8, v9, v10}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1976
    sget-object v9, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 1977
    invoke-virtual {v8, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1978
    sget-object v9, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v9, v10}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1979
    sget-object v9, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v10, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v9, v10}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1980
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v9, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    if-eqz v2, :cond_3

    .line 1983
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1984
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    new-array v2, v5, [Lgnu/expr/Expression;

    aput-object v1, v2, v6

    .line 1986
    sget-object v1, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    .line 1987
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v1, p1

    goto :goto_3

    .line 1992
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1993
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 1998
    instance-of v4, v2, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Lgnu/expr/ApplyExp;

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    instance-of v7, v4, Lgnu/expr/ApplyExp;

    if-eqz v7, :cond_4

    check-cast v4, Lgnu/expr/ApplyExp;

    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    sget-object v8, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    if-ne v7, v8, :cond_4

    .line 2003
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    invoke-virtual {v4, p1}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    move-object p1, v1

    .line 2007
    :cond_4
    iput-object v2, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object v1, v0

    .line 2010
    :goto_3
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    aput-object p1, v2, v6

    aput-object v3, v2, v5

    .line 2047
    new-instance p1, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    invoke-direct {p1, v3, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto/16 :goto_0
.end method

.method parseSeparator()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3707
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 3708
    iget v3, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    return-void

    .line 3711
    :cond_1
    sget-boolean v3, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    .line 3713
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 3714
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const/16 v0, 0x77

    const-string v2, "missing \';\' after declaration"

    .line 3715
    invoke-virtual {p0, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_2
    if-ltz v1, :cond_3

    .line 3718
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    :cond_3
    return-void
.end method

.method parseStepExpr()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2056
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x2e

    const/4 v2, -0x1

    if-eq v0, v1, :cond_5

    const/16 v3, 0x33

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    const/16 v3, 0xd

    if-ge v0, v3, :cond_1

    .line 2079
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2080
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    move v2, v0

    goto :goto_1

    .line 2082
    :cond_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2

    .line 2084
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2086
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v0

    :goto_0
    move-object v1, v0

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const/16 v3, 0xec

    if-ne v0, v3, :cond_3

    .line 2091
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0

    .line 2095
    :cond_3
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    .line 2103
    :cond_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 2106
    :goto_1
    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    const/16 v3, 0xc

    const/16 v4, 0x9

    if-ne v0, v1, :cond_6

    const/16 v0, 0xc

    goto :goto_3

    :cond_6
    const/16 v0, 0x9

    .line 2059
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2060
    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "context item is undefined"

    const-string v5, "XPDY0002"

    .line 2063
    invoke-virtual {p0, v1, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    goto :goto_4

    .line 2065
    :cond_7
    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v5, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v1, v7

    :goto_4
    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    aput-object v1, v4, v6

    .line 2069
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-static {v5}, Lgnu/kawa/xml/ParentAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    :cond_8
    if-ne v0, v3, :cond_9

    goto :goto_5

    :cond_9
    move v2, v0

    .line 2073
    :goto_5
    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2114
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_5

    .line 2116
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2117
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 2120
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2121
    new-instance v3, Lgnu/expr/LambdaExp;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2122
    invoke-virtual {p0, v3, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2123
    sget-object v4, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v3, v4}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v4

    if-ltz p2, :cond_0

    .line 2125
    sget-object v5, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 2127
    :cond_0
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 2128
    :goto_1
    sget-object v5, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v5, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2129
    sget-object v5, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v3, v5, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2130
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    const/4 v5, 0x0

    .line 2131
    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    const/16 v4, 0x5d

    const/4 v5, 0x0

    .line 2132
    invoke-virtual {p0, v4, v5}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v4

    .line 2133
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const-string v6, "missing \']\' - unexpected end-of-file"

    .line 2134
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_1
    if-gez p2, :cond_2

    .line 2140
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v6, 0x9

    if-eq p2, v6, :cond_4

    const/16 v6, 0xa

    if-eq p2, v6, :cond_4

    const/16 v6, 0xb

    if-ne p2, v6, :cond_3

    goto :goto_2

    .line 2152
    :cond_3
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    goto :goto_3

    .line 2147
    :cond_4
    :goto_2
    sget-object v6, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 2158
    :goto_3
    invoke-virtual {p0, v4, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2159
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2160
    iput-object v4, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2161
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    aput-object p1, v0, v5

    aput-object v3, v0, v1

    .line 2163
    new-instance p1, Lgnu/expr/ApplyExp;

    invoke-direct {p1, v6, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method

.method parseTypeSwitch()Lgnu/expr/Expression;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x74

    .line 2779
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 2780
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 2781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2784
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 2785
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    const-string v2, "case"

    .line 2786
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "missing Variable after \'$\'"

    const-string v5, "return"

    const/16 v6, 0x65

    const-string v7, "(arg)"

    const/4 v8, 0x1

    const/16 v9, 0x24

    if-eqz v2, :cond_4

    const/16 v2, 0x63

    .line 2788
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2789
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2790
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v9, :cond_2

    .line 2792
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2794
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v4, "as"

    .line 2796
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2797
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    :cond_1
    const-string v4, "missing \'as\'"

    .line 2799
    invoke-virtual {p0, v6, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 2802
    :cond_2
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v7}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2803
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 2804
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2805
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4, v8}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2806
    invoke-virtual {v4, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2807
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2808
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_2

    :cond_3
    const-string v2, "missing \'return\' after \'case\'"

    .line 2810
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2811
    :goto_2
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    const/16 v2, 0x72

    .line 2812
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2813
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 2814
    iput-object v2, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2815
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2816
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2817
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "default"

    .line 2820
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2822
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0, v8}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2823
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2825
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v9, :cond_6

    .line 2827
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2829
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2830
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_3

    .line 2833
    :cond_6
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v7}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2834
    :goto_3
    invoke-virtual {v0, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2836
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2837
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    :cond_7
    const-string v2, "missing \'return\' after \'default\'"

    .line 2839
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2840
    :goto_4
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2841
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 2842
    iput-object v2, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2843
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2844
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    .line 2848
    :cond_8
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v6, 0x77

    :goto_5
    const-string v0, "no \'default\' clause in \'typeswitch\'"

    const-string v2, "XPST0003"

    invoke-virtual {p0, v6, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2852
    :goto_6
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2853
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 2854
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2855
    new-instance v1, Lgnu/expr/ApplyExp;

    const-string v2, "gnu.kawa.reflect.TypeSwitch"

    const-string v3, "typeSwitch"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method parseURILiteral()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1624
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v0, "expected a URILiteral"

    .line 1625
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x1

    .line 1627
    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseUnaryExpr()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1746
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x19d

    const/16 v2, 0x19e

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1758
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnionExpr()Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_3

    .line 1749
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1750
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v2

    if-ne v0, v1, :cond_2

    const-string v3, "plus"

    goto :goto_1

    :cond_2
    const-string v3, "minus"

    :goto_1
    if-ne v0, v1, :cond_3

    const-string v0, "+"

    goto :goto_2

    :cond_3
    const-string v0, "-"

    :goto_2
    const-string v1, "gnu.xquery.util.ArithOp"

    .line 1751
    invoke-static {v1, v3, v0}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1755
    new-instance v1, Lgnu/expr/ApplyExp;

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {v1, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method parseUnionExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1768
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v1

    const/16 v2, 0x1a3

    if-eq v1, v2, :cond_0

    return-object v0

    .line 1771
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1772
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 1773
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    goto :goto_0
.end method

.method public parseVariable()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3178
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 3179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_0
    const-string v0, "missing \'$\' before variable name"

    .line 3181
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3182
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3185
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v2, 0x41

    if-ne v1, v2, :cond_2

    .line 3188
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseVariableDeclaration()Lgnu/expr/Declaration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3196
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3199
    :cond_0
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 3200
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    return-object v1
.end method

.method parseXMLConstructor(IZ)Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_7

    .line 2461
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    const/16 v3, 0x2d

    if-ne p1, v3, :cond_4

    .line 2462
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 2464
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skip()V

    const-string p1, "-->"

    .line 2465
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2467
    iget p1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 p2, 0x1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 2471
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v0, v0, p1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    move p2, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const-string p1, "consecutive or final hyphen in XML comment"

    .line 2480
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_8

    :cond_3
    new-array p1, v1, [Lgnu/expr/Expression;

    .line 2483
    new-instance p2, Lgnu/expr/QuoteExp;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p1, v2

    .line 2485
    new-instance p2, Lgnu/expr/ApplyExp;

    const-string v0, "gnu.kawa.xml.CommentConstructor"

    const-string v1, "commentConstructor"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_6

    :cond_4
    const/16 v3, 0x5b

    if-ne p1, v3, :cond_6

    .line 2490
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    const/16 v4, 0x43

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    const/16 v4, 0x44

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    const/16 v4, 0x54

    if-ne p1, v4, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-ne p1, v3, :cond_6

    if-nez p2, :cond_5

    const/16 p1, 0x65

    const-string p2, "CDATA section must be in element content"

    .line 2495
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_5
    const-string p1, "]]>"

    .line 2496
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    new-array p1, v1, [Lgnu/expr/Expression;

    .line 2497
    new-instance p2, Lgnu/expr/QuoteExp;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p2, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object p2, p1, v2

    .line 2499
    new-instance p2, Lgnu/expr/ApplyExp;

    sget-object v0, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    invoke-direct {p2, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_6

    :cond_6
    const-string p1, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    .line 2502
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    goto/16 :goto_8

    :cond_7
    const/16 v3, 0x3f

    if-ne p1, v3, :cond_d

    .line 2506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result p1

    if-ltz p1, :cond_8

    int-to-char p1, p1

    .line 2507
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result p1

    if-eq p1, v0, :cond_9

    :cond_8
    const-string p1, "missing target after \'<?\'"

    .line 2509
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2510
    :cond_9
    new-instance v0, Ljava/lang/String;

    iget-object p1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget p2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, p1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    const/4 p1, 0x0

    .line 2514
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p2

    if-gez p2, :cond_a

    goto :goto_4

    :cond_a
    int-to-char p2, p2

    .line 2517
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-nez p2, :cond_c

    .line 2519
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    :goto_4
    const-string p2, "?>"

    .line 2524
    invoke-virtual {p0, p2}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    if-nez p1, :cond_b

    .line 2525
    iget p1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez p1, :cond_b

    const-string p1, "target must be followed by space or \'?>\'"

    .line 2526
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2527
    :cond_b
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {p1, p2, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 p2, 0x2

    new-array p2, p2, [Lgnu/expr/Expression;

    .line 2528
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, p2, v2

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v0, p2, v1

    .line 2529
    new-instance p1, Lgnu/expr/ApplyExp;

    const-string v0, "gnu.kawa.xml.MakeProcInst"

    const-string v1, "makeProcInst"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto :goto_8

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_d
    if-ltz p1, :cond_10

    int-to-char v0, p1

    .line 2533
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 2537
    :cond_e
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2538
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 p1, 0x3c

    .line 2539
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result p1

    .line 2540
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseElementConstructor()Lgnu/expr/Expression;

    move-result-object v0

    if-nez p2, :cond_f

    .line 2542
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p2

    goto :goto_5

    :cond_f
    move-object p2, v0

    .line 2543
    :goto_5
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    :goto_6
    move-object p1, p2

    goto :goto_8

    :cond_10
    :goto_7
    const-string p1, "expected QName after \'<\'"

    .line 2534
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method final peekNonSpace(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v0

    if-gez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    return v0
.end method

.method peekOperand()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 947
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_0
    const/16 v1, 0x41

    const/16 v2, 0x3a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x43

    if-ne v0, v1, :cond_3

    .line 1187
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1189
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v0

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 1191
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1193
    :cond_3
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 951
    :cond_4
    :goto_2
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    .line 952
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v1

    const-string v4, "element"

    const/16 v5, 0x24

    const/16 v6, 0x7b

    const/16 v7, 0x28

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-ne v0, v6, :cond_15

    const-string v3, "validate"

    .line 1067
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf8

    .line 1068
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_2
    if-ne v0, v6, :cond_15

    const-string v3, "unordered"

    .line 1063
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xfa

    .line 1064
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_3
    const-string v3, "text"

    .line 1049
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v0, v7, :cond_6

    const/16 v0, 0xe7

    .line 1052
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_6
    if-ne v0, v6, :cond_7

    .line 1055
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0xfd

    .line 1056
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_7
    if-ne v0, v7, :cond_15

    const-string v3, "typeswitch"

    .line 1059
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf2

    .line 1060
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_4
    if-ne v0, v5, :cond_8

    const-string v3, "some"

    .line 1041
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v0, 0xf5

    .line 1042
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_8
    if-ne v0, v7, :cond_9

    const-string v3, "schema-attribute"

    .line 1043
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v0, 0xef

    .line 1044
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_9
    if-ne v0, v7, :cond_15

    const-string v3, "schema-element"

    .line 1045
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf0

    .line 1046
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_5
    const-string v3, "processing-instruction"

    .line 1028
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_a

    const/16 v0, 0xe9

    .line 1031
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_a
    if-eq v0, v6, :cond_b

    int-to-char v3, v0

    .line 1032
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1034
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0xff

    .line 1035
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_6
    if-ne v0, v6, :cond_15

    const-string v3, "ordered"

    .line 1024
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf9

    .line 1025
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_7
    if-ne v0, v7, :cond_15

    const-string v3, "node"

    .line 1020
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xe6

    .line 1021
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_8
    if-ne v0, v5, :cond_15

    const-string v3, "let"

    .line 1016
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf4

    .line 1017
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_9
    if-ne v0, v7, :cond_c

    const-string v3, "if"

    .line 1010
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0xf1

    .line 1011
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_c
    if-ne v0, v7, :cond_15

    const-string v3, "item"

    .line 1012
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xed

    .line 1013
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_a
    if-ne v0, v5, :cond_15

    const-string v3, "for"

    .line 1006
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf3

    .line 1007
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 989
    :pswitch_b
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    if-ne v0, v7, :cond_d

    const/16 v0, 0xeb

    .line 992
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_d
    if-eq v0, v6, :cond_e

    int-to-char v3, v0

    .line 993
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 995
    :cond_e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0xfb

    .line 996
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_f
    if-ne v0, v7, :cond_10

    const-string v3, "empty-sequence"

    .line 1000
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v0, 0xee

    .line 1001
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_10
    if-ne v0, v5, :cond_15

    const-string v3, "every"

    .line 1002
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xf6

    .line 1003
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_c
    if-ne v0, v6, :cond_11

    const-string v3, "document"

    .line 980
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 982
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0x100

    .line 983
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_11
    if-ne v0, v7, :cond_15

    const-string v3, "document-node"

    .line 985
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v0, 0xea

    .line 986
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_d
    const-string v3, "comment"

    .line 968
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_12

    const/16 v0, 0xe8

    .line 971
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_12
    if-ne v0, v6, :cond_15

    .line 974
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0xfe

    .line 975
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_e
    const-string v3, "attribute"

    .line 955
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v0, v7, :cond_13

    const/16 v0, 0xec

    .line 958
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_13
    if-eq v0, v6, :cond_14

    int-to-char v3, v0

    .line 959
    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 961
    :cond_14
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    const/16 v0, 0xfc

    .line 962
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_15
    :goto_4
    if-ne v0, v7, :cond_16

    .line 1071
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-eq v3, v2, :cond_16

    const/16 v0, 0x46

    .line 1073
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_16
    if-ne v0, v2, :cond_17

    .line 1075
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-ne v3, v2, :cond_17

    .line 1076
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v0

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 1077
    :cond_17
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1078
    iput-object v2, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    const/16 v1, 0x73

    const-string v2, "import"

    const-string v3, "define"

    if-eq v0, v1, :cond_28

    const/16 v1, 0x76

    const-string v5, "declare"

    if-eq v0, v1, :cond_25

    const/16 v1, 0x78

    const/16 v6, 0x53

    if-eq v0, v1, :cond_24

    const/16 v1, 0x4f

    const/16 v7, 0x45

    const-string v8, "default"

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_f
    const-string v1, "rdering"

    .line 1146
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x55

    .line 1147
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_18
    const-string v1, "ption"

    .line 1148
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x6f

    .line 1149
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_10
    const-string v1, "amespace"

    .line 1135
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v0, 0x4e

    .line 1136
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 1137
    :cond_19
    invoke-direct {p0, v8, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v0, "replace \'default namespace\' by \'declare default element namespace\'"

    .line 1139
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1140
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    :cond_1a
    const-string v2, "module"

    .line 1142
    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x4d

    .line 1143
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_11
    const-string v1, "odule"

    .line 1131
    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x49

    .line 1132
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_12
    const-string v2, "unction"

    .line 1117
    invoke-direct {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x50

    if-eqz v4, :cond_1b

    .line 1118
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v5

    .line 1119
    :cond_1b
    invoke-direct {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v0, "replace \'define function\' by \'declare function\'"

    .line 1121
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1122
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v5

    .line 1124
    :cond_1c
    invoke-direct {p0, v8, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v0, "replace \'default function\' by \'declare default function namespace\'"

    .line 1126
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1127
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    :pswitch_13
    const-string v2, "efault"

    .line 1094
    invoke-direct {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1096
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const-string v0, "function"

    .line 1097
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1098
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1099
    :cond_1d
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1100
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    :cond_1e
    const-string v0, "collation"

    .line 1101
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x47

    .line 1102
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_1f
    const-string v0, "order"

    .line 1103
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x48

    .line 1104
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_20
    const-string v0, "unrecognized/unimplemented \'declare default\'"

    .line 1105
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipToSemicolon()V

    .line 1107
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v0

    return v0

    :cond_21
    :pswitch_14
    const-string v1, "lement"

    .line 1110
    invoke-direct {p0, v8, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "replace \'default element\' by \'declare default element namespace\'"

    .line 1112
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1113
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    :pswitch_15
    const-string v1, "onstruction"

    .line 1088
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v0, 0x4b

    .line 1089
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_22
    const-string v1, "opy-namespaces"

    .line 1090
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x4c

    .line 1091
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_16
    const-string v1, "ase-uri"

    .line 1082
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v0, 0x42

    .line 1083
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_23
    const-string v1, "oundary-space"

    .line 1084
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1085
    iput v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v6

    :cond_24
    const-string v1, "mlspace"

    .line 1167
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "replace \'define xmlspace\' by \'declare boundary-space\'"

    .line 1169
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1170
    iput v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v6

    :cond_25
    const-string v1, "ariable"

    .line 1156
    invoke-direct {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x56

    if-eqz v2, :cond_26

    .line 1157
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v4

    .line 1158
    :cond_26
    invoke-direct {p0, v3, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v0, "replace \'define variable\' by \'declare variable\'"

    .line 1160
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1161
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v4

    :cond_27
    const-string v1, "xquery"

    const-string v2, "ersion"

    .line 1163
    invoke-direct {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x59

    .line 1164
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_28
    const-string v1, "chema"

    .line 1152
    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v0, 0x54

    .line 1153
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :cond_29
    :goto_5
    if-ltz v0, :cond_2a

    .line 1176
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    int-to-char v0, v0

    .line 1177
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    const/16 v0, 0x57

    .line 1180
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1183
    :cond_2a
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_14
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6d
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method peekOperator()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 789
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 791
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v0, :cond_0

    return v1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    :cond_1
    const/16 v1, 0x41

    if-ne v0, v1, :cond_12

    .line 797
    iget v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/16 v1, 0x6c

    const/16 v2, 0x69

    const/16 v3, 0x1a6

    const/16 v4, 0x6e

    const/4 v5, 0x0

    const-string v6, "as"

    const/16 v7, 0x6f

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string v0, "instanceof"

    .line 877
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "use \'instanceof of\' (two words) instead of \'instanceof\'"

    .line 879
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 880
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "intersect"

    .line 873
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a4

    .line 874
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "instance"

    const-string v1, "of"

    .line 867
    invoke-virtual {p0, v0, v1, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_2
    const-string v0, "castable"

    .line 869
    invoke-virtual {p0, v0, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a8

    .line 870
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :pswitch_4
    const-string v0, "except"

    .line 863
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a5

    .line 864
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :pswitch_5
    const-string v0, "where"

    .line 853
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc4

    .line 854
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_3
    const-string v0, "isnot"

    .line 855
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x199

    .line 856
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_4
    const-string v0, "union"

    .line 857
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a3

    .line 858
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_5
    const-string v0, "treat"

    .line 859
    invoke-virtual {p0, v0, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a7

    .line 860
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :pswitch_6
    const-string v0, "idiv"

    .line 847
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1a1

    .line 848
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_6
    const-string v0, "cast"

    .line 849
    invoke-virtual {p0, v0, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x1a9

    .line 850
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 827
    :pswitch_7
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v0, v0, v5

    .line 828
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v8

    .line 829
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v6, 0x2

    aget-char v5, v5, v6

    const/16 v6, 0x61

    const/16 v8, 0x64

    if-ne v0, v6, :cond_7

    if-ne v3, v4, :cond_12

    if-ne v5, v8, :cond_12

    const/16 v0, 0x191

    .line 833
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x6d

    if-ne v0, v4, :cond_9

    const/16 v0, 0x75

    if-ne v3, v0, :cond_8

    if-ne v5, v1, :cond_8

    const/16 v0, 0x19f

    .line 837
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    :cond_8
    if-ne v3, v7, :cond_12

    if-ne v5, v8, :cond_12

    const/16 v0, 0x1a2

    .line 839
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    :cond_9
    if-ne v0, v8, :cond_12

    if-ne v3, v2, :cond_12

    const/16 v0, 0x76

    if-ne v5, v0, :cond_12

    const/16 v0, 0x1a0

    .line 843
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 802
    :pswitch_8
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v0, v0, v5

    .line 803
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v8

    if-ne v0, v7, :cond_a

    const/16 v5, 0x72

    if-ne v3, v5, :cond_a

    const/16 v0, 0x190

    .line 805
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_a
    const/16 v5, 0x74

    if-ne v0, v5, :cond_b

    if-ne v3, v7, :cond_b

    const/16 v0, 0x19c

    .line 807
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_b
    if-ne v0, v2, :cond_c

    const/16 v2, 0x73

    if-ne v3, v2, :cond_c

    const/16 v0, 0x198

    .line 809
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_c
    const/16 v2, 0x65

    if-ne v0, v2, :cond_d

    const/16 v6, 0x71

    if-ne v3, v6, :cond_d

    const/16 v0, 0x1aa

    .line 811
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_d
    if-ne v0, v4, :cond_e

    if-ne v3, v2, :cond_e

    const/16 v0, 0x1ab

    .line 813
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_e
    const/16 v4, 0x67

    if-ne v0, v4, :cond_10

    if-ne v3, v2, :cond_f

    const/16 v0, 0x1af

    .line 816
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_f
    if-ne v3, v5, :cond_12

    const/16 v0, 0x1ae

    .line 817
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_10
    if-ne v0, v1, :cond_12

    if-ne v3, v2, :cond_11

    const/16 v0, 0x1ad

    .line 821
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    :cond_11
    if-ne v3, v5, :cond_12

    const/16 v0, 0x1ac

    .line 822
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 887
    :cond_12
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method pushNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 1215
    :cond_0
    new-instance v0, Lgnu/xml/NamespaceBinding;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3636
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 479
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 480
    invoke-super {p0}, Lgnu/text/Lexer;->reset()V

    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setInteractive(Z)V
    .locals 1

    .line 1231
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eq v0, p1, :cond_1

    .line 1232
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1233
    :cond_1
    iput-boolean p1, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    return-void
.end method

.method public setStaticBaseUri(Ljava/lang/String;)V
    .locals 3

    .line 87
    :try_start_0
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object p1

    invoke-static {p1}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p1

    iput-object p1, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 91
    instance-of v0, p1, Lgnu/mapping/WrappedException;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lgnu/mapping/WrappedException;

    invoke-virtual {p1}, Lgnu/mapping/WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :cond_0
    const/16 v0, 0x65

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method final skipComment()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 266
    iget v0, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    .line 267
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 268
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 269
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 272
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const/16 v3, 0x65

    .line 273
    invoke-virtual {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_0
    const/16 v2, 0x3a

    .line 277
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 280
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    if-ne v7, v2, :cond_1

    const/16 v8, 0x28

    if-ne v5, v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v8, 0x29

    if-ne v7, v8, :cond_3

    if-ne v5, v2, :cond_3

    if-nez v6, :cond_2

    .line 293
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    return-void

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    if-gez v7, :cond_4

    .line 300
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 301
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const-string v5, "non-terminated comment starting here"

    .line 302
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    :cond_4
    :goto_1
    move v5, v7

    goto :goto_0
.end method

.method final skipOldComment()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 243
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const-string v3, "use (: :) instead of old-style comment {-- --}"

    .line 244
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    .line 247
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x7d

    if-ne v5, v6, :cond_2

    if-lt v4, v2, :cond_2

    return-void

    :cond_2
    if-gez v5, :cond_0

    .line 254
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 255
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const-string v5, "non-terminated comment starting here"

    .line 256
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final skipSpace()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    return v0
.end method

.method final skipSpace(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3a

    .line 199
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    .line 208
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    return v1

    .line 211
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 214
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 215
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    return v1

    .line 218
    :cond_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    if-ltz v0, :cond_7

    int-to-char v1, v0

    .line 220
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_6
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    :cond_7
    :goto_1
    return v0
.end method

.method final skipToSemicolon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const-string v0, "XPST0003"

    .line 4405
    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    const/16 v0, 0x65

    .line 4379
    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4380
    iget-boolean p2, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 4382
    iput p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 p2, 0x0

    .line 4383
    iput-object p2, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 4384
    iput p1, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 4385
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object p1

    check-cast p1, Lgnu/mapping/InPort;

    const/16 p2, 0xa

    iput-char p2, p1, Lgnu/mapping/InPort;->readState:C

    .line 4388
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    if-ltz p1, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 4393
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4397
    :cond_1
    new-instance p1, Lgnu/text/SyntaxException;

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p2

    invoke-direct {p1, p2}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw p1

    .line 4399
    :cond_2
    new-instance p2, Lgnu/expr/ErrorExp;

    invoke-direct {p2, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method tokenString()Ljava/lang/String;
    .locals 5

    .line 4311
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_4

    const/16 v2, 0x41

    if-eq v0, v2, :cond_3

    const/16 v2, 0x46

    if-eq v0, v2, :cond_2

    const/16 v2, 0x51

    if-eq v0, v2, :cond_3

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x64

    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    .line 4335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    sub-int/2addr v3, v1

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::-axis("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    .line 4337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4338
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4326
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + \'(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4329
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 4314
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4316
    :goto_0
    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ge v1, v3, :cond_6

    .line 4318
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v1

    if-ne v3, v2, :cond_5

    .line 4320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4321
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4323
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "<EOF>"

    return-object v0
.end method

.method warnOldVersion(Ljava/lang/String;)V
    .locals 1

    .line 4425
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4426
    :cond_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    goto :goto_0

    :cond_1
    const/16 v0, 0x77

    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 7

    .line 2724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2726
    :cond_0
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v6, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-direct {v5, v6}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v6, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
