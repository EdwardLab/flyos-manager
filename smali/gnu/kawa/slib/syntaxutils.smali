.class public Lgnu/kawa/slib/syntaxutils;
.super Lgnu/expr/ModuleBody;
.source "syntaxutils.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsyntaxutils.scm\nScheme\n*S Scheme\n*F\n+ 1 syntaxutils.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm\n*L\n6#1,153:6\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Ex:Lkawa/lang/Macro;

.field public static final $Prvt$typecase$Pc:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/syntaxutils;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/lists/PairWithPosition;

.field static final Lit12:Lgnu/lists/PairWithPosition;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxRules;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lkawa/lang/SyntaxRules;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit8:Lgnu/math/IntNum;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final expand:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "as"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "else"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/syntaxutils;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "let"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/syntaxutils;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "cond"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/syntaxutils;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "begin"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/syntaxutils;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "or"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/syntaxutils;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "quote"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/syntaxutils;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "eql"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/syntaxutils;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "expand"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/syntaxutils;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "!"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/syntaxutils;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    new-array v15, v11, [Lkawa/lang/SyntaxRule;

    new-instance v22, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    move-object/from16 v23, v9

    new-array v9, v14, [Ljava/lang/Object;

    const-string v14, "\u000c\u0018\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    move-object/from16 v25, v1

    const/4 v1, 0x3

    invoke-direct {v11, v14, v9, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v9, 0x2

    new-array v14, v9, [Ljava/lang/Object;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v1, "invoke"

    invoke-direct {v9, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x0

    aput-object v1, v14, v9

    const/4 v1, 0x1

    aput-object v7, v14, v1

    const-string v18, "\u0001\u0001\u0003"

    const-string v19, "\u0011\u0018\u0004\t\u000b)\u0011\u0018\u000c\u0008\u0003\u0008\u0015\u0013"

    const/16 v21, 0x1

    move-object/from16 v16, v22

    move-object/from16 v17, v11

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v22, v15, v1

    const/4 v9, 0x3

    invoke-direct {v10, v12, v15, v9}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/syntaxutils;->Lit16:Lkawa/lang/SyntaxRules;

    new-instance v11, Lkawa/lang/SyntaxRules;

    new-array v12, v9, [Ljava/lang/Object;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v14, "typecase%"

    invoke-direct {v9, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/syntaxutils;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v12, v1

    const/4 v14, 0x1

    aput-object v8, v12, v14

    const/4 v15, 0x2

    aput-object v6, v12, v15

    const/4 v15, 0x6

    new-array v1, v15, [Lkawa/lang/SyntaxRule;

    new-instance v22, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    move-object/from16 v26, v10

    new-array v10, v14, [Ljava/lang/Object;

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v24, 0x0

    aput-object v16, v10, v24

    move-object/from16 v27, v11

    const-string v11, "\u000c\u0018\u000c\u0007<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008"

    move-object/from16 v28, v12

    const/4 v12, 0x3

    invoke-direct {v15, v11, v10, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v5, v10, v24

    const-string v18, "\u0001\u0003\u0003"

    const-string v19, "\u0011\u0018\u0004\u0008\r\u000b"

    move-object/from16 v16, v22

    move-object/from16 v17, v15

    move-object/from16 v20, v10

    invoke-direct/range {v16 .. v21}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v22, v1, v24

    new-instance v10, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    aput-object v8, v14, v24

    const-string v8, "\u000c\u0018\u000c\u0007\\,\u000c\u0002\u000c\u000f\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x4

    invoke-direct {v11, v8, v14, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v4, v15, v24

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v12, "eqv?"

    invoke-direct {v14, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    const/4 v14, 0x1

    aput-object v12, v15, v14

    const/4 v12, 0x2

    aput-object v7, v15, v12

    const/4 v12, 0x3

    aput-object v2, v15, v12

    const/4 v12, 0x4

    aput-object v9, v15, v12

    const-string v31, "\u0001\u0001\u0003\u0003"

    const-string v32, "\u0011\u0018\u0004yY\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0008\u000b\u0008\u0015\u0013\u0008\u0011\u0018\u001c\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    const/16 v34, 0x1

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v33, v15

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v11, 0x1

    aput-object v10, v1, v11

    new-instance v10, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x4

    invoke-direct {v12, v8, v14, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v8, v11

    const-string v31, "\u0001\u0001\u0003\u0003"

    const-string v32, "\u0011\u0018\u0004\t\u0003)\t\u000b\u0008\u0015\u0013\u0008\u001d\u001b"

    move-object/from16 v29, v10

    move-object/from16 v30, v12

    move-object/from16 v33, v8

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v8, 0x2

    aput-object v10, v1, v8

    new-instance v8, Lkawa/lang/SyntaxRule;

    new-instance v10, Lkawa/lang/SyntaxPattern;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    const-string v6, "\u000c\u0018\u000c\u0007l<\u000c\u0002\r\u000f\u0008\u0008\u0008\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v15, 0x4

    invoke-direct {v10, v6, v12, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x6

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v3, v12, v14

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v14, "f"

    invoke-direct {v6, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    aput-object v6, v12, v11

    const/4 v6, 0x2

    aput-object v0, v12, v6

    const/4 v6, 0x3

    aput-object v5, v12, v6

    aput-object v9, v12, v15

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x5

    aput-object v6, v12, v11

    const-string v31, "\u0001\u0003\u0003\u0003"

    const-string v32, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0008\u0011\u0018\u0014\u0011\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u0015\u0013\u0008\u0011\u0018$\t\u0003I\r\t\u000b\u0008\u0011\u0018\u000c\u0008\u0003\u0008\u0011\u0018,\u0008\u0011\u0018$\t\u0003\u0008\u001d\u001b"

    move-object/from16 v29, v8

    move-object/from16 v30, v10

    move-object/from16 v33, v12

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x3

    aput-object v8, v1, v6

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v8, Lkawa/lang/SyntaxPattern;

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\u000c\u0007<\u000c\u000f\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v14, 0x4

    invoke-direct {v8, v12, v11, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v10

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v10, "instance?"

    invoke-direct {v4, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x1

    aput-object v4, v11, v10

    const/4 v4, 0x2

    aput-object v3, v11, v4

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v10, "::"

    invoke-direct {v4, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x3

    aput-object v4, v11, v10

    const/4 v4, 0x4

    aput-object v5, v11, v4

    const/4 v4, 0x5

    aput-object v2, v11, v4

    const/4 v2, 0x6

    aput-object v9, v11, v2

    const-string v31, "\u0001\u0001\u0003\u0003"

    const-string v32, "\u0011\u0018\u0004\u00f19\u0011\u0018\u000c\t\u0003\u0008\u000b\u0008\u0011\u0018\u0014Q\u0008\t\u0003\u0011\u0018\u001c\t\u000b\u0008\u0003\u0008\u0011\u0018$\u0008\u0015\u0013\u0008\u0011\u0018,\u0008\u0011\u00184\t\u0003\u0008\u001d\u001b"

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v33, v11

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x4

    aput-object v6, v1, v2

    new-instance v2, Lkawa/lang/SyntaxRule;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v11, 0x1

    invoke-direct {v4, v10, v8, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "error"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    aput-object v10, v8, v6

    const-string v6, "typecase% failed"

    aput-object v6, v8, v11

    const/4 v6, 0x2

    aput-object v13, v8, v6

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v10, "getClass"

    invoke-direct {v6, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x3

    aput-object v6, v8, v10

    const/4 v6, 0x4

    aput-object v25, v8, v6

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v10, "<object>"

    invoke-direct {v6, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x5

    aput-object v6, v8, v10

    const-string v31, "\u0001"

    const-string v32, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\u0011\u0018,\u0008\u0003"

    const/16 v34, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v33, v8

    invoke-direct/range {v29 .. v34}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v2, v1, v10

    move-object/from16 v2, v27

    move-object/from16 v4, v28

    const/4 v6, 0x4

    invoke-direct {v2, v4, v1, v6}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lgnu/kawa/slib/syntaxutils;->Lit14:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v4, ":"

    invoke-direct {v1, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm"

    const v8, 0x9b010

    invoke-static {v1, v4, v6, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x99010

    move-object/from16 v8, v25

    invoke-static {v8, v1, v6, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x8700c

    invoke-static {v7, v1, v6, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x75004

    invoke-static {v3, v1, v6, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    const/4 v1, 0x1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "if"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x66007

    invoke-static {v1, v3, v6, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x6401b

    invoke-static {v5, v1, v6, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x5c007

    invoke-static {v0, v1, v6, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x5a007

    invoke-static {v0, v1, v6, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    const-string v0, "lang"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x4401d

    invoke-static {v5, v0, v6, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    const-string v0, "env"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    new-instance v0, Lgnu/kawa/slib/syntaxutils;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils;-><init>()V

    sput-object v0, Lgnu/kawa/slib/syntaxutils;->$instance:Lgnu/kawa/slib/syntaxutils;

    invoke-static {v9, v2, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->$Prvt$typecase$Pc:Lkawa/lang/Macro;

    move-object/from16 v1, v26

    invoke-static {v13, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->$Prvt$$Ex:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, -0xfff

    move-object/from16 v9, v23

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/syntaxutils;->expand:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 67
    sget-object v0, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne p1, v2, :cond_0

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 68
    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v5

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    aput-object p1, v2, v5

    invoke-static {p0, v2}, Lgnu/kawa/slib/syntaxutils;->rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static rewriteForm$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 4

    const-string v0, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)"

    .line 71
    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit2:Lgnu/expr/Keyword;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v1, v3, :cond_0

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    :cond_0
    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit0:Lgnu/expr/Keyword;

    invoke-static {p1, v2, v3}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne p1, v2, :cond_1

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    :cond_1
    const/4 v2, 0x1

    .line 75
    :try_start_0
    check-cast p1, Lgnu/mapping/Environment;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Lgnu/expr/Language;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1, v3}, Lgnu/expr/NameLookup;->getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;

    move-result-object p1

    .line 76
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 77
    new-instance v3, Lkawa/lang/Translator;

    :try_start_2
    check-cast v1, Lgnu/expr/Language;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-direct {v3, v1, v0, p1}, Lkawa/lang/Translator;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    const/4 p1, 0x0

    .line 78
    invoke-virtual {v3, p1}, Lkawa/lang/Translator;->pushNewModule(Ljava/lang/String;)Lgnu/expr/ModuleExp;

    .line 79
    invoke-static {v3}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object p1

    .line 81
    :try_start_3
    invoke-virtual {v3, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-static {p1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 81
    throw p0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)"

    invoke-direct {p1, p0, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    .line 75
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method static unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 9

    .line 85
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame;-><init>()V

    .line 86
    instance-of v1, p0, Lgnu/expr/LetExp;

    const/4 v2, -0x2

    const-string v3, "exp"

    if-eqz v1, :cond_0

    :try_start_0
    check-cast p0, Lgnu/expr/LetExp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    instance-of v1, p0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    :try_start_1
    check-cast p0, Lgnu/expr/QuoteExp;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_1
    instance-of v1, p0, Lgnu/expr/SetExp;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v1, :cond_2

    :try_start_2
    check-cast p0, Lgnu/expr/SetExp;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/SetExp;->getNewValue()Lgnu/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v5

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object p0, v2, v4

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_2
    instance-of v1, p0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_4

    :try_start_3
    check-cast p0, Lgnu/expr/LambdaExp;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit4:Lgnu/lists/PairWithPosition;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v3, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 94
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    .line 92
    iget-object v8, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    iput-object v7, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    .line 94
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lgnu/kawa/slib/syntaxutils$frame;->pack:Lgnu/lists/LList;

    invoke-static {v0}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v0

    aput-object v0, v2, v5

    new-array v0, v6, [Ljava/lang/Object;

    iget-object p0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v5

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object p0, v0, v4

    invoke-static {v0}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 86
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_4
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_5

    :try_start_4
    check-cast p0, Lgnu/expr/ReferenceExp;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_5
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_6

    :try_start_5
    check-cast p0, Lgnu/expr/ApplyExp;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_6
    instance-of v0, p0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_7

    :try_start_6
    check-cast p0, Lgnu/expr/BeginExp;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object p0

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_7
    instance-of v0, p0, Lgnu/expr/IfExp;

    if-eqz v0, :cond_9

    :try_start_7
    check-cast p0, Lgnu/expr/IfExp;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    new-array v0, v6, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit6:Lgnu/lists/PairWithPosition;

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getTest()Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lgnu/expr/IfExp;->getThenClause()Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getElseClause()Lgnu/expr/Expression;

    move-result-object p0

    if-nez p0, :cond_8

    .line 105
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_1

    :cond_8
    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    :goto_1
    aput-object p0, v3, v5

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object p0, v3, v4

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-static {v2}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {v1}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v4

    invoke-static {v0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :catch_7
    move-exception v0

    .line 86
    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_9
    :goto_2
    return-object p0
.end method

.method static unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;
    .locals 5

    .line 109
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame0;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame0;-><init>()V

    .line 110
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 111
    array-length v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    :goto_0
    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 113
    invoke-virtual {v3, v2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_0

    .line 114
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aget-object v3, p0, v3

    invoke-static {v3}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    iget-object v4, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {v3, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    iput-object v3, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    .line 112
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lgnu/kawa/slib/syntaxutils$frame0;->pack:Lgnu/lists/LList;

    invoke-static {p0}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object p0

    return-object p0
.end method

.method static unrewriteApply(Lgnu/expr/ApplyExp;)Ljava/lang/Object;
    .locals 12

    .line 138
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/syntaxutils;->unrewrite$St([Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    instance-of v2, v0, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_0

    :try_start_0
    move-object v2, v0

    check-cast v2, Lgnu/expr/ReferenceExp;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "fun"

    invoke-direct {v1, p0, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    const-string v2, "kawa.standard.Scheme"

    const-string v3, "applyToArgs"

    .line 143
    invoke-static {v2, v3}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 145
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunctionValue()Ljava/lang/Object;

    move-result-object p0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v3, v11

    and-int/2addr v3, v11

    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v3, v11

    and-int/2addr v3, v11

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 146
    sget-object v9, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v5, "field"

    const-string v6, "field"

    const-string v7, "getField"

    const-string v8, "isField"

    invoke-static/range {v3 .. v9}, Lgnu/kawa/reflect/SlotGet;->getSlotValue(ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgnu/expr/Language;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, v2, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-ne v3, v2, :cond_5

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_4

    .line 151
    :cond_5
    instance-of v2, p0, Lgnu/kawa/functions/Convert;

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    new-array p0, v3, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit11:Lgnu/lists/PairWithPosition;

    aput-object v2, p0, v10

    aput-object v1, p0, v11

    invoke-static {p0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_6
    instance-of p0, p0, Lgnu/kawa/functions/GetNamedPart;

    if-eqz p0, :cond_7

    new-array p0, v3, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/syntaxutils;->Lit12:Lgnu/lists/PairWithPosition;

    aput-object v2, p0, v10

    aput-object v1, p0, v11

    invoke-static {p0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    :goto_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v2, :cond_8

    move-object v1, p0

    goto :goto_4

    :cond_8
    new-array p0, v3, [Ljava/lang/Object;

    .line 158
    invoke-static {v0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, v10

    aput-object v1, p0, v11

    invoke-static {p0}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method static unrewriteLet(Lgnu/expr/LetExp;)Ljava/lang/Object;
    .locals 10

    .line 116
    new-instance v0, Lgnu/kawa/slib/syntaxutils$frame1;

    invoke-direct {v0}, Lgnu/kawa/slib/syntaxutils$frame1;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 117
    sget-object v3, Lgnu/kawa/slib/syntaxutils;->Lit9:Lgnu/lists/PairWithPosition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v5, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 119
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 118
    sget-object v6, Lgnu/kawa/slib/syntaxutils;->Lit7:Lgnu/math/IntNum;

    :goto_0
    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    move-object v9, v6

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-static {v8}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    .line 117
    iget-object v8, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    iput-object v7, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    .line 119
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 120
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/syntaxutils;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {v7, v6, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lgnu/kawa/slib/syntaxutils$frame1;->pack:Lgnu/lists/LList;

    invoke-static {v0}, Lkawa/lib/lists;->reverse$Ex(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v0

    aput-object v0, v3, v4

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-static {p0}, Lgnu/kawa/slib/syntaxutils;->unrewrite(Lgnu/expr/Expression;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v4

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static unrewriteQuote(Lgnu/expr/QuoteExp;)Ljava/lang/Object;
    .locals 6

    .line 127
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 129
    invoke-static {p0}, Lgnu/math/Numeric;->asNumericOrNull(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "val"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_3
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_4

    :try_start_2
    check-cast p0, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_4
    instance-of v0, p0, Lgnu/expr/Keyword;

    if-eqz v0, :cond_5

    :try_start_3
    check-cast p0, Lgnu/expr/Keyword;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_5
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    :try_start_4
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_6
    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    if-ne p0, v0, :cond_8

    goto :goto_2

    :cond_8
    instance-of v0, p0, Lgnu/bytecode/Type;

    const/4 v5, 0x2

    if-eqz v0, :cond_9

    :try_start_5
    check-cast p0, Lgnu/bytecode/Type;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 133
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_5
    move-exception v0

    .line 129
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    :try_start_6
    check-cast p0, Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 134
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "<~a>"

    aput-object v1, v0, v4

    aput-object p0, v0, v3

    .line 128
    invoke-static {v4, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object p0

    goto :goto_2

    :catch_6
    move-exception v0

    .line 129
    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_a
    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lgnu/kawa/slib/syntaxutils;->Lit10:Lgnu/lists/PairWithPosition;

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object p0, v1, v3

    invoke-static {v1}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-static {v0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 67
    aget-object v0, p2, p1

    array-length p1, p2

    sub-int/2addr p1, v1

    new-array v1, p1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-static {v0, v1}, Lgnu/kawa/slib/syntaxutils;->expand$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 6
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
