.class public Lgnu/kawa/slib/cut;
.super Lgnu/expr/ModuleBody;
.source "cut.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ncut.scm\nScheme\n*S Scheme\n*F\n+ 1 cut.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm\n*L\n51#1:51\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

.field public static final $Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/cut;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final cut:Lkawa/lang/Macro;

.field public static final cute:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "rest-slot"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/cut;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "apply"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/cut;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/cut;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "x"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/cut;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "lambda"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/cut;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "let"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/cut;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "<...>"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/cut;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lkawa/lang/SyntaxRules;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "cute"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/cut;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-array v12, v8, [Lkawa/lang/SyntaxRule;

    new-instance v19, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v13, v11, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u0003"

    invoke-direct {v14, v15, v13, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v13, v8, [Ljava/lang/Object;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v11, "srfi-26-internal-cute"

    invoke-direct {v8, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/cut;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v11, 0x0

    aput-object v8, v13, v11

    const-string v16, "\u0000"

    const-string v17, "\u0011\u0018\u0004\t\u0010\t\u0010\t\u0010\u0002"

    const/16 v18, 0x0

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v19, v12, v11

    const/4 v13, 0x1

    invoke-direct {v7, v9, v12, v13}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v7, Lgnu/kawa/slib/cut;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v9, Lkawa/lang/SyntaxRules;

    new-array v12, v13, [Ljava/lang/Object;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "cut"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/cut;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v14, v12, v11

    new-array v15, v13, [Lkawa/lang/SyntaxRule;

    new-instance v16, Lkawa/lang/SyntaxRule;

    move-object/from16 v17, v7

    new-instance v7, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v10

    new-array v10, v11, [Ljava/lang/Object;

    move-object/from16 v11, v21

    invoke-direct {v7, v11, v10, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v10, v13, [Ljava/lang/Object;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v13, "srfi-26-internal-cut"

    invoke-direct {v11, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/cut;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v11, v10, v13

    const-string v24, "\u0000"

    const-string v25, "\u0011\u0018\u0004\t\u0010\t\u0010\u0002"

    const/16 v27, 0x0

    move-object/from16 v22, v16

    move-object/from16 v23, v7

    move-object/from16 v26, v10

    invoke-direct/range {v22 .. v27}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v16, v15, v13

    const/4 v7, 0x1

    invoke-direct {v9, v12, v15, v7}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v9, Lgnu/kawa/slib/cut;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v10, Lkawa/lang/SyntaxRules;

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Object;

    aput-object v8, v15, v13

    aput-object v2, v15, v7

    const/4 v7, 0x2

    aput-object v6, v15, v7

    const/4 v12, 0x4

    new-array v7, v12, [Lkawa/lang/SyntaxRule;

    new-instance v27, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    move-object/from16 v28, v9

    new-array v9, v13, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u0008"

    move-object/from16 v29, v14

    const/4 v14, 0x4

    invoke-direct {v12, v13, v9, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v9, 0x2

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v13, v9

    const/4 v9, 0x1

    aput-object v4, v13, v9

    const-string v23, "\u0003\u0001\u0001\u0003"

    const-string v24, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c\u0019\u0008\u0005\u0003\u0008\t\u0013\u0008\u001d\u001b"

    const/16 v26, 0x1

    move-object/from16 v21, v27

    move-object/from16 v22, v12

    move-object/from16 v25, v13

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v9, 0x0

    aput-object v27, v7, v9

    new-instance v12, Lkawa/lang/SyntaxRule;

    new-instance v13, Lkawa/lang/SyntaxPattern;

    move-object/from16 v27, v0

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    aput-object v6, v0, v9

    const-string v14, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f<\u000c\u0017\r\u001f\u0018\u0008\u0008\u000c\u0002\u0008"

    const/4 v9, 0x4

    invoke-direct {v13, v14, v0, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x5

    new-array v14, v0, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v5, v14, v20

    const/4 v5, 0x1

    aput-object v4, v14, v5

    const/4 v5, 0x2

    aput-object v3, v14, v5

    const/4 v5, 0x3

    aput-object v1, v14, v5

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/cut.scm"

    move-object/from16 v31, v1

    const v1, 0x57048

    invoke-static {v3, v5, v0, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v14, v9

    const-string v23, "\u0003\u0001\u0001\u0003"

    const-string v24, "\u0011\u0018\u0004\t\u000b\u0008\u0011\u0018\u000c)\u0011\u0005\u0003\u0018\u0014\u0008\u0011\u0018\u001c\t\u0013\u0011\u001d\u001b\u0018$"

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    move-object/from16 v25, v14

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x1

    aput-object v12, v7, v1

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    new-array v12, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const-string v14, "\u000c\u0018,\r\u0007\u0000\u0008\u0008\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u0002\u001b"

    const/4 v1, 0x4

    invoke-direct {v9, v14, v12, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v8, v12, v13

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x5d016

    invoke-static {v3, v1, v0, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v12, v13

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v13, 0x5d03b

    invoke-static {v3, v1, v0, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v13, 0x2

    aput-object v1, v12, v13

    const-string v23, "\u0003\u0001\u0003\u0000"

    const-string v24, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\t\u000b)\u0011\u0015\u0013\u0018\u0014\u001a"

    move-object/from16 v21, v5

    move-object/from16 v22, v9

    move-object/from16 v25, v12

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v5, v7, v13

    new-instance v1, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v9, 0x0

    new-array v12, v9, [Ljava/lang/Object;

    const-string v13, "\u000c\u0018\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f#"

    const/4 v14, 0x5

    invoke-direct {v5, v13, v12, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v9

    const/4 v9, 0x1

    aput-object v3, v13, v9

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v12, 0x62039

    invoke-static {v3, v9, v0, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v13, v12

    const-string v34, "\u0001\u0001\u0003\u0001\u0000"

    const-string v35, "\u0011\u0018\u0004\t\u00039)\u0011\u0018\u000c\u0008\u001b\u000b)\u0011\u0015\u0013\u0018\u0014\""

    const/16 v37, 0x1

    move-object/from16 v32, v1

    move-object/from16 v33, v5

    move-object/from16 v36, v13

    invoke-direct/range {v32 .. v37}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x3

    aput-object v1, v7, v5

    const/4 v1, 0x5

    invoke-direct {v10, v15, v7, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v10, Lgnu/kawa/slib/cut;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v7, v9

    const/4 v12, 0x1

    aput-object v2, v7, v12

    const/4 v12, 0x2

    aput-object v6, v7, v12

    const/4 v13, 0x4

    new-array v14, v13, [Lkawa/lang/SyntaxRule;

    new-instance v13, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    new-array v12, v9, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u0008"

    invoke-direct {v15, v9, v12, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v9, v5

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v12, "begin"

    invoke-direct {v5, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    const/4 v12, 0x1

    aput-object v5, v9, v12

    const-string v23, "\u0003\u0001\u0003"

    const-string v24, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003\u0008)\u0011\u0018\u000c\u0008\u000b\u0008\u0015\u0013"

    move-object/from16 v21, v13

    move-object/from16 v22, v15

    move-object/from16 v25, v9

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x0

    aput-object v13, v14, v5

    new-instance v9, Lkawa/lang/SyntaxRule;

    new-instance v12, Lkawa/lang/SyntaxPattern;

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v6, v15, v5

    const-string v6, "\u000c\u0018,\r\u0007\u0000\u0008\u0008<\u000c\u000f\r\u0017\u0010\u0008\u0008\u000c\u0002\u0008"

    const/4 v13, 0x3

    invoke-direct {v12, v6, v15, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x4

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v4, v15, v5

    const/4 v4, 0x1

    aput-object v27, v15, v4

    const/4 v4, 0x2

    aput-object v31, v15, v4

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0x3d03e

    move-object/from16 v6, v27

    invoke-static {v6, v4, v0, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v15, v13

    const-string v23, "\u0003\u0001\u0003"

    const-string v24, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c\u0008\u0011\u0018\u0014\t\u000b\u0011\u0015\u0013\u0018\u001c"

    move-object/from16 v21, v9

    move-object/from16 v22, v12

    move-object/from16 v25, v15

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v4, 0x1

    aput-object v9, v14, v4

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v9, v12

    const-string v2, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0002\u0013"

    const/4 v13, 0x3

    invoke-direct {v6, v2, v9, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v11, v2, v12

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v12, 0x4102b

    invoke-static {v3, v9, v0, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v2, v4

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x4103c

    invoke-static {v3, v4, v0, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v23, "\u0003\u0003\u0000"

    const-string v24, "\u0011\u0018\u0004)\u0011\u0005\u0003\u0018\u000c)\u0011\r\u000b\u0018\u0014\u0012"

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v25, v2

    invoke-direct/range {v21 .. v26}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v5, v14, v3

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v2, Lkawa/lang/SyntaxPattern;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "\u000c\u0018,\r\u0007\u0000\u0008\u0008,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    const/4 v6, 0x4

    invoke-direct {v2, v5, v4, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v3

    const-string v32, "\u0003\u0003\u0001\u0000"

    const-string v33, "\u0011\u0018\u0004\u0019\u0008\u0005\u0003)\u0011\r\u000b\u0008\u0013\u001a"

    const/16 v35, 0x1

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    move-object/from16 v34, v4

    invoke-direct/range {v30 .. v35}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x3

    aput-object v0, v14, v2

    const/4 v0, 0x4

    invoke-direct {v1, v7, v14, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lgnu/kawa/slib/cut;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/kawa/slib/cut;

    invoke-direct {v0}, Lgnu/kawa/slib/cut;-><init>()V

    sput-object v0, Lgnu/kawa/slib/cut;->$instance:Lgnu/kawa/slib/cut;

    invoke-static {v11, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncut:Lkawa/lang/Macro;

    invoke-static {v8, v10, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->$Prvt$srfi$Mn26$Mninternal$Mncute:Lkawa/lang/Macro;

    move-object/from16 v1, v28

    move-object/from16 v14, v29

    .line 51
    invoke-static {v14, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->cut:Lkawa/lang/Macro;

    move-object/from16 v1, v17

    move-object/from16 v10, v18

    invoke-static {v10, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/cut;->cute:Lkawa/lang/Macro;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 51
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
