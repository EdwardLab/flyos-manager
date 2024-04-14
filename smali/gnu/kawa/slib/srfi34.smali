.class public Lgnu/kawa/slib/srfi34;
.super Lgnu/expr/ModuleBody;
.source "srfi34.scm"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/raise$Mnobject$Mnexception;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi34.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi34.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm\n*L\n1#1,18:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

.field public static final $Prvt$guard$Mnaux:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/srfi34;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final guard:Lkawa/lang/Macro;

.field public static final raise:Lgnu/expr/ModuleMethod;

.field public static final with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<raise-object-exception>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "ex"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "begin"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/srfi34;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "if"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi34;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "let"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi34;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "temp"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/srfi34;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "=>"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/srfi34;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "else"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/srfi34;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lkawa/lang/SyntaxRules;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "guard-aux"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/srfi34;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v13, 0x1

    aput-object v7, v10, v13

    const/4 v14, 0x2

    aput-object v6, v10, v14

    const/4 v15, 0x7

    new-array v14, v15, [Lkawa/lang/SyntaxRule;

    new-instance v23, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    const-string v7, "\u000c\u0018\u000c\u0007L\u000c\u0002\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v12, 0x3

    invoke-direct {v15, v7, v9, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v7, v13, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    const-string v19, "\u0001\u0001\u0003"

    const-string v20, "\u0011\u0018\u0004\t\u000b\u0008\u0015\u0013"

    const/16 v22, 0x1

    move-object/from16 v17, v23

    move-object/from16 v18, v15

    move-object/from16 v21, v7

    invoke-direct/range {v17 .. v22}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v23, v14, v9

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v6, v15, v9

    const-string v13, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u0008"

    const/4 v9, 0x3

    invoke-direct {v12, v13, v15, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v13, 0x4

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v4, v15, v18

    const/16 v17, 0x1

    aput-object v5, v15, v17

    const/16 v16, 0x2

    aput-object v3, v15, v16

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi34.scm"

    move-object/from16 v19, v0

    const v0, 0x43014

    invoke-static {v5, v13, v9, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v15, v13

    const-string v26, "\u0001\u0001\u0001"

    const-string v27, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0003"

    const/16 v29, 0x0

    move-object/from16 v24, v7

    move-object/from16 v25, v12

    move-object/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x1

    aput-object v7, v14, v0

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    new-array v13, v0, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v13, v15

    const-string v6, "\u000c\u0018\u000c\u0007<\u000c\u000f\u000c\u0002\u000c\u0017\u0008\u000c\u001f\r\' \u0008\u0008"

    const/4 v0, 0x5

    invoke-direct {v12, v6, v13, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v15

    const/4 v13, 0x1

    aput-object v5, v6, v13

    const/4 v13, 0x2

    aput-object v3, v6, v13

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x48014

    invoke-static {v5, v13, v9, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    const/4 v15, 0x3

    aput-object v13, v6, v15

    const/4 v13, 0x4

    aput-object v11, v6, v13

    const-string v26, "\u0001\u0001\u0001\u0001\u0003"

    const-string v27, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c!\t\u0013\u0018\u001c\u0008\u0011\u0018$\t\u0003\t\u001b\u0008%#"

    const/16 v29, 0x1

    move-object/from16 v24, v7

    move-object/from16 v25, v12

    move-object/from16 v28, v6

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x2

    aput-object v7, v14, v6

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/Object;

    const-string v0, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    invoke-direct {v12, v0, v15, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v0, v13, [Ljava/lang/Object;

    const-string v26, "\u0001\u0001"

    const-string v27, "\u000b"

    const/16 v29, 0x0

    move-object/from16 v24, v7

    move-object/from16 v25, v12

    move-object/from16 v28, v0

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x3

    aput-object v7, v14, v0

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u000c\u0007\u001c\u000c\u000f\u0008\u000c\u0017\r\u001f\u0018\u0008\u0008"

    const/4 v0, 0x4

    invoke-direct {v7, v15, v13, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v4, v13, v12

    const/4 v0, 0x1

    aput-object v5, v13, v0

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v11, v13, v0

    const-string v26, "\u0001\u0001\u0001\u0003"

    const-string v27, "\u0011\u0018\u00041\u0008\u0011\u0018\u000c\u0008\u000b\u0008\u0011\u0018\u0014\u0011\u0018\u000c\u0011\u0018\u000c\u0008\u0011\u0018\u001c\t\u0003\t\u0013\u0008\u001d\u001b"

    const/16 v29, 0x1

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v28, v13

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x4

    aput-object v6, v14, v0

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    invoke-direct {v6, v13, v12, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v3, v12, v7

    const/4 v0, 0x1

    aput-object v2, v12, v0

    const-string v26, "\u0001\u0001\u0001\u0003"

    const-string v27, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0003"

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v28, v12

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x5

    aput-object v5, v14, v0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\u000c\u0007L\u000c\u000f\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\'\r/(\u0008\u0008"

    const/4 v13, 0x6

    invoke-direct {v5, v12, v7, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v7, 0x3

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v3, v12, v6

    const/4 v6, 0x1

    aput-object v2, v12, v6

    const/4 v6, 0x2

    aput-object v11, v12, v6

    const-string v26, "\u0001\u0001\u0001\u0003\u0001\u0003"

    const-string v27, "\u0011\u0018\u0004\t\u000bA\u0011\u0018\u000c\t\u0013\u0008\u001d\u001b\u0008\u0011\u0018\u0014\t\u0003\t#\u0008-+"

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v28, v12

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v14, v13

    invoke-direct {v8, v10, v14, v13}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v8, Lgnu/kawa/slib/srfi34;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v10, "guard"

    invoke-direct {v7, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/srfi34;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x0

    aput-object v7, v6, v10

    new-array v12, v5, [Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v15, v10, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    const/4 v10, 0x3

    invoke-direct {v14, v13, v15, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v15, "try-catch"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    aput-object v13, v10, v15

    const/4 v13, 0x1

    aput-object v2, v10, v13

    const/4 v2, 0x2

    aput-object v1, v10, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<java.lang.Throwable>"

    invoke-direct {v2, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x3

    aput-object v2, v10, v13

    const/4 v2, 0x4

    aput-object v4, v10, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v4, "instance?"

    invoke-direct {v2, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1b016

    move-object/from16 v15, v19

    invoke-static {v15, v4, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v13, 0x1b013    # 1.54999E-40f

    invoke-static {v1, v4, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const v13, 0x1b008

    invoke-static {v2, v4, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v13, "field"

    invoke-direct {v4, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v8

    const-string v8, "as"

    invoke-direct {v13, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v22, v7

    const v7, 0x1c02c

    invoke-static {v1, v13, v9, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v13, 0x1c013

    invoke-static {v15, v7, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v13, 0x1c00f

    invoke-static {v8, v7, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v15, "quote"

    invoke-direct {v8, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v13, "value"

    invoke-direct {v15, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v30, v0

    const v0, 0x1c031

    invoke-static {v13, v15, v9, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    invoke-static {v8, v13, v9, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x1c030

    invoke-static {v0, v8, v9, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v8, 0x1c00f

    invoke-static {v7, v0, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v7, 0x1c008

    invoke-static {v4, v0, v9, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x1d008

    invoke-static {v1, v4, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    invoke-static {v0, v4, v9, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v4, 0x1b008

    invoke-static {v2, v0, v9, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v2, 0x1b004

    invoke-static {v3, v0, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v3, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v10, v2

    const/4 v0, 0x6

    aput-object v11, v10, v0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "primitive-throw"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x1e022

    invoke-static {v1, v2, v9, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x1e011

    invoke-static {v0, v1, v9, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v10, v1

    const-string v26, "\u0001\u0000\u0000"

    const-string v27, "\u0011\u0018\u0004!\u0011\u0018\u000c\u0012\u0008\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$)\u0008\t\u0003\u0018,\u0008\u0011\u00184\u0011\u0018<\n"

    const/16 v29, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v14

    move-object/from16 v28, v10

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v5, v12, v0

    move-object/from16 v0, v30

    const/4 v1, 0x3

    invoke-direct {v0, v6, v12, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/srfi34;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "raise"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi34;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "with-exception-handler"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/srfi34;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/kawa/slib/srfi34;

    invoke-direct {v3}, Lgnu/kawa/slib/srfi34;-><init>()V

    sput-object v3, Lgnu/kawa/slib/srfi34;->$instance:Lgnu/kawa/slib/srfi34;

    const-class v4, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    sput-object v4, Lgnu/kawa/slib/srfi34;->$Prvt$$Lsraise$Mnobject$Mnexception$Gr:Ljava/lang/Class;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x2002

    const/4 v6, 0x1

    invoke-direct {v4, v3, v6, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/srfi34;->with$Mnexception$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x1001

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi34;->raise:Lgnu/expr/ModuleMethod;

    move-object/from16 v7, v22

    .line 3
    invoke-static {v7, v0, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi34;->guard:Lkawa/lang/Macro;

    move-object/from16 v0, v19

    invoke-static {v11, v0, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi34;->$Prvt$guard$Mnaux:Lkawa/lang/Macro;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static raise(Ljava/lang/Object;)V
    .locals 1

    .line 18
    new-instance v0, Lgnu/kawa/slib/raise$Mnobject$Mnexception;

    invoke-direct {v0, p0}, Lgnu/kawa/slib/raise$Mnobject$Mnexception;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    :try_start_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lgnu/kawa/slib/raise$Mnobject$Mnexception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p1, p1, Lgnu/kawa/slib/raise$Mnobject$Mnexception;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    invoke-static {p2}, Lgnu/kawa/slib/srfi34;->raise(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi34;->withExceptionHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 17
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 11
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
