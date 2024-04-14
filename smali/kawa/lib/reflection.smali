.class public Lkawa/lib/reflection;
.super Lgnu/expr/ModuleBody;
.source "reflection.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreflection.scm\nScheme\n*S Scheme\n*F\n+ 1 reflection.scm\n/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm\n*L\n1#1,114:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/reflection;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lkawa/lang/SyntaxRules;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lkawa/lang/SyntaxRules;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lkawa/lang/SyntaxRules;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lkawa/lang/SyntaxRules;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lkawa/lang/SyntaxRules;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lkawa/lang/SyntaxRules;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lkawa/lang/SyntaxRules;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/math/IntNum;

.field static final Lit34:Lgnu/math/IntNum;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final make$Mnrecord$Mntype:Lgnu/expr/ModuleMethod;

.field public static final primitive$Mnarray$Mnget:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnlength:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnnew:Lkawa/lang/Macro;

.field public static final primitive$Mnarray$Mnset:Lkawa/lang/Macro;

.field public static final primitive$Mnconstructor:Lkawa/lang/Macro;

.field public static final primitive$Mnget$Mnfield:Lkawa/lang/Macro;

.field public static final primitive$Mnget$Mnstatic:Lkawa/lang/Macro;

.field public static final primitive$Mnset$Mnfield:Lkawa/lang/Macro;

.field public static final primitive$Mnset$Mnstatic:Lkawa/lang/Macro;

.field public static final record$Mnaccessor:Lgnu/expr/ModuleMethod;

.field public static final record$Mnconstructor:Lgnu/expr/ModuleMethod;

.field public static final record$Mnmodifier:Lgnu/expr/ModuleMethod;

.field public static final record$Mnpredicate:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mndescriptor:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mnfield$Mnnames:Lgnu/expr/ModuleMethod;

.field public static final record$Mntype$Mnname:Lgnu/expr/ModuleMethod;

.field public static final record$Qu:Lgnu/expr/ModuleMethod;

.field public static final subtype$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/reflection;->Lit34:Lgnu/math/IntNum;

    const/16 v2, 0x9

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sput-object v3, Lkawa/lib/reflection;->Lit33:Lgnu/math/IntNum;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "make"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/reflection;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "constant-fold"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/reflection;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "subtype?"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/reflection;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lkawa/lang/SyntaxRules;

    new-array v8, v0, [Ljava/lang/Object;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "primitive-set-static"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/reflection;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-array v11, v0, [Lkawa/lang/SyntaxRule;

    new-instance v18, Lkawa/lang/SyntaxRule;

    new-instance v13, Lkawa/lang/SyntaxPattern;

    new-array v12, v10, [Ljava/lang/Object;

    const-string v15, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v14, 0x3

    invoke-direct {v13, v15, v12, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v12, 0x4

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v5, v2, v10

    aput-object v4, v2, v0

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v0, "<gnu.kawa.reflect.StaticSet>"

    invoke-direct {v12, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/4 v12, 0x2

    aput-object v0, v2, v12

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "/u2/home/jis/ai2-kawa/kawa/lib/reflection.scm"

    const v12, 0x6f017

    invoke-static {v3, v0, v10, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    aput-object v0, v2, v14

    const-string v0, "\u0001\u0001\u0001"

    const-string v20, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/16 v21, 0x0

    move-object/from16 v22, v6

    const/4 v6, 0x4

    move-object/from16 v12, v18

    const/4 v6, 0x3

    move-object v14, v0

    move-object v0, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v2

    move/from16 v17, v21

    invoke-direct/range {v12 .. v17}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v18, v11, v2

    invoke-direct {v7, v8, v11, v6}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v7, Lkawa/lib/reflection;->Lit29:Lkawa/lang/SyntaxRules;

    new-instance v8, Lkawa/lang/SyntaxRules;

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "primitive-get-static"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/reflection;->Lit26:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v12, v2

    new-array v14, v11, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    move-object/from16 v16, v7

    new-array v7, v2, [Ljava/lang/Object;

    invoke-direct {v11, v0, v7, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const/4 v2, 0x1

    aput-object v4, v6, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v7, "<gnu.kawa.reflect.StaticGet>"

    invoke-direct {v2, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v7, 0x2

    aput-object v2, v6, v7

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v7, 0x69017

    invoke-static {v3, v2, v10, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v6, v3

    const-string v25, "\u0001\u0001\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    const/16 v28, 0x0

    move-object/from16 v23, v15

    move-object/from16 v24, v11

    move-object/from16 v27, v6

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v15, v14, v2

    const/4 v3, 0x3

    invoke-direct {v8, v12, v14, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v8, Lkawa/lib/reflection;->Lit27:Lkawa/lang/SyntaxRules;

    new-instance v3, Lkawa/lang/SyntaxRules;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "primitive-set-field"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/reflection;->Lit24:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v7, v2

    new-array v12, v6, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-direct {v15, v0, v6, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v5, v6, v2

    const/4 v2, 0x1

    aput-object v4, v6, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v9

    const-string v9, "<kawa.lang.SetFieldProc>"

    invoke-direct {v2, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x2

    aput-object v2, v6, v9

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x62017

    invoke-static {v1, v2, v10, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v6, v9

    const-string v25, "\u0001\u0001\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v27, v6

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v14, v12, v2

    const/4 v6, 0x3

    invoke-direct {v3, v7, v12, v6}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v3, Lkawa/lib/reflection;->Lit25:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v14, "primitive-get-field"

    invoke-direct {v12, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/reflection;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v12, v9, v2

    new-array v14, v7, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    move-object/from16 v20, v8

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-direct {v7, v0, v8, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v5, v2, v0

    const/4 v0, 0x1

    aput-object v4, v2, v0

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v8, "<kawa.lang.GetFieldProc>"

    invoke-direct {v0, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x2

    aput-object v0, v2, v8

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x5c017

    invoke-static {v1, v0, v10, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string v25, "\u0001\u0001\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\t\u0003\t\u000b\t\u0013\u0018\u001c"

    move-object/from16 v23, v15

    move-object/from16 v24, v7

    move-object/from16 v27, v2

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v15, v14, v0

    const/4 v1, 0x3

    invoke-direct {v6, v9, v14, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/reflection;->Lit23:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "primitive-array-length"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/reflection;->Lit20:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v7, v0

    new-array v9, v2, [Lkawa/lang/SyntaxRule;

    new-instance v10, Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxPattern;

    new-array v15, v0, [Ljava/lang/Object;

    const-string v0, "\u000c\u0018\u000c\u0007\u0008"

    invoke-direct {v14, v0, v15, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    move-object/from16 v21, v13

    const/4 v15, 0x3

    new-array v13, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v13, v15

    aput-object v4, v13, v2

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v15, "<gnu.kawa.reflect.ArrayLength>"

    invoke-direct {v2, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x2

    aput-object v2, v13, v15

    const-string v25, "\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object/from16 v27, v13

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v10, v9, v2

    const/4 v10, 0x1

    invoke-direct {v1, v7, v9, v10}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/reflection;->Lit21:Lkawa/lang/SyntaxRules;

    new-instance v7, Lkawa/lang/SyntaxRules;

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "primitive-array-get"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/reflection;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v13, v9, v2

    new-array v14, v10, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    move-object/from16 v29, v3

    new-instance v3, Lkawa/lang/SyntaxPattern;

    move-object/from16 v30, v11

    new-array v11, v2, [Ljava/lang/Object;

    invoke-direct {v3, v0, v11, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    move-object/from16 v31, v6

    const/4 v11, 0x3

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v4, v6, v10

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v10, "<gnu.kawa.reflect.ArrayGet>"

    invoke-direct {v2, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x2

    aput-object v2, v6, v10

    const-string v25, "\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    move-object/from16 v23, v15

    move-object/from16 v24, v3

    move-object/from16 v27, v6

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v15, v14, v2

    const/4 v3, 0x1

    invoke-direct {v7, v9, v14, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v7, Lkawa/lib/reflection;->Lit19:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v9, v3, [Ljava/lang/Object;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "primitive-array-set"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/reflection;->Lit16:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v9, v2

    new-array v11, v3, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    move-object/from16 v32, v12

    new-array v12, v2, [Ljava/lang/Object;

    invoke-direct {v15, v0, v12, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    move-object/from16 v33, v1

    const/4 v12, 0x3

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object v4, v1, v3

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<gnu.kawa.reflect.ArraySet>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v25, "\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v27, v1

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v14, v11, v1

    const/4 v2, 0x1

    invoke-direct {v6, v9, v11, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/reflection;->Lit17:Lkawa/lang/SyntaxRules;

    new-instance v3, Lkawa/lang/SyntaxRules;

    new-array v9, v2, [Ljava/lang/Object;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "primitive-array-new"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/reflection;->Lit14:Lgnu/mapping/SimpleSymbol;

    aput-object v11, v9, v1

    new-array v12, v2, [Lkawa/lang/SyntaxRule;

    new-instance v14, Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    move-object/from16 v34, v8

    new-array v8, v1, [Ljava/lang/Object;

    invoke-direct {v15, v0, v8, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v4, v8, v2

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "<gnu.kawa.reflect.ArrayNew>"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x2

    aput-object v0, v8, v1

    const-string v25, "\u0001"

    const-string v26, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v27, v8

    invoke-direct/range {v23 .. v28}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v14, v12, v0

    const/4 v0, 0x1

    invoke-direct {v3, v9, v12, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v3, Lkawa/lib/reflection;->Lit15:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "record-type-field-names"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/reflection;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "record-type-name"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/reflection;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v5, "record-type-descriptor"

    invoke-direct {v2, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/reflection;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v8, "record-predicate"

    invoke-direct {v5, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/reflection;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "record?"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/reflection;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v12, "record-modifier"

    invoke-direct {v9, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/reflection;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v14, "record-accessor"

    invoke-direct {v12, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/reflection;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "record-constructor"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/reflection;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v7

    const-string v7, "make-record-type"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/reflection;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lang/SyntaxTemplate;

    move-object/from16 v25, v6

    move-object/from16 v24, v13

    const/4 v13, 0x4

    new-array v6, v13, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v10

    const-string v10, "lambda"

    invoke-direct {v13, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v10, v6, v13

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "::"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x1

    aput-object v10, v6, v13

    const/4 v10, 0x2

    aput-object v4, v6, v10

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v10, "as"

    invoke-direct {v4, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x3

    aput-object v4, v6, v10

    const-string v4, "\u0001\u0001\u0003\u0003"

    const-string v10, "\u0011\u0018\u0004\u0019\u0008\u001d\u001b\u0011\u0018\u000c\t\u000b\u0008\u0011\u0018\u0014\t\u000b\u0008\u0015\u0011\u0018\u001c\t\u0013\u0008\u001b"

    invoke-direct {v15, v4, v10, v6, v13}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v15, Lkawa/lib/reflection;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    const-string v15, "\r\u001f\u0018\u0008\u0008"

    const/4 v13, 0x4

    invoke-direct {v4, v15, v10, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v4, Lkawa/lib/reflection;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v4, Lkawa/lang/SyntaxTemplate;

    new-array v10, v6, [Ljava/lang/Object;

    const-string v13, "\u0001\u0001\u0003"

    const-string v15, "\u0008\u0015\u0013"

    const/4 v6, 0x1

    invoke-direct {v4, v13, v15, v10, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v4, Lkawa/lib/reflection;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v4, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v10, "\u000c\u0007\u000c\u000f,\r\u0017\u0010\u0008\u0008\u0008"

    const/4 v13, 0x3

    invoke-direct {v4, v10, v6, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v4, Lkawa/lib/reflection;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v6, "primitive-constructor"

    invoke-direct {v4, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/reflection;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lib/reflection;

    invoke-direct {v6}, Lkawa/lib/reflection;-><init>()V

    sput-object v6, Lkawa/lib/reflection;->$instance:Lkawa/lib/reflection;

    new-instance v10, Lgnu/expr/ModuleMethod;

    const/4 v13, 0x0

    const/16 v15, 0x1001

    move-object/from16 v19, v3

    const/4 v3, 0x2

    invoke-direct {v10, v6, v3, v13, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    invoke-static {v4, v10, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v3

    sput-object v3, Lkawa/lib/reflection;->primitive$Mnconstructor:Lkawa/lang/Macro;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x2002

    const/4 v10, 0x3

    invoke-direct {v3, v6, v10, v7, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->make$Mnrecord$Mntype:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x2001

    const/4 v10, 0x4

    invoke-direct {v3, v6, v10, v14, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Mnconstructor:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x6

    invoke-direct {v3, v6, v7, v12, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Mnaccessor:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x7

    invoke-direct {v3, v6, v7, v9, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Mnmodifier:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x8

    invoke-direct {v3, v6, v7, v8, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Qu:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x9

    invoke-direct {v3, v6, v7, v5, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Mnpredicate:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xa

    invoke-direct {v3, v6, v5, v2, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/reflection;->record$Mntype$Mndescriptor:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xb

    invoke-direct {v2, v6, v3, v1, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/reflection;->record$Mntype$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    invoke-direct {v1, v6, v2, v0, v15}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/reflection;->record$Mntype$Mnfield$Mnnames:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, v19

    invoke-static {v11, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnarray$Mnnew:Lkawa/lang/Macro;

    move-object/from16 v0, v25

    move-object/from16 v10, v26

    invoke-static {v10, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnarray$Mnset:Lkawa/lang/Macro;

    move-object/from16 v0, v23

    move-object/from16 v13, v24

    invoke-static {v13, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnarray$Mnget:Lkawa/lang/Macro;

    move-object/from16 v0, v33

    move-object/from16 v8, v34

    invoke-static {v8, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnarray$Mnlength:Lkawa/lang/Macro;

    move-object/from16 v0, v31

    move-object/from16 v12, v32

    invoke-static {v12, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnget$Mnfield:Lkawa/lang/Macro;

    move-object/from16 v0, v29

    move-object/from16 v11, v30

    invoke-static {v11, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnset$Mnfield:Lkawa/lang/Macro;

    move-object/from16 v0, v20

    move-object/from16 v13, v21

    invoke-static {v13, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnget$Mnstatic:Lkawa/lang/Macro;

    move-object/from16 v0, v16

    move-object/from16 v9, v18

    invoke-static {v9, v0, v6}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/reflection;->primitive$Mnset$Mnstatic:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    move-object/from16 v2, v22

    invoke-direct {v0, v6, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/reflection;->subtype$Qu:Lgnu/expr/ModuleMethod;

    invoke-virtual {v6}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isRecord(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p0, p0, Lkawa/lang/Record;

    return p0
.end method

.method public static isSubtype(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result p0

    return p0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/reflection;->Lit1:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const-string v3, "syntax-case"

    if-eqz v1, :cond_0

    .line 7
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/reflection;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/std_syntax;->generateTemporaries(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/reflection;->Lit3:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/reflection;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v3, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lkawa/lang/Record;->makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0
.end method

.method public static recordAccessor(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/GetFieldProc;
    .locals 1

    .line 21
    new-instance v0, Lkawa/lang/GetFieldProc;

    invoke-direct {v0, p0, p1}, Lkawa/lang/GetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static recordConstructor(Lgnu/bytecode/ClassType;)Lkawa/lang/RecordConstructor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;
    .locals 1

    .line 18
    new-instance v0, Lkawa/lang/RecordConstructor;

    invoke-direct {v0, p0, p1}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static recordModifier(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/SetFieldProc;
    .locals 1

    .line 24
    new-instance v0, Lkawa/lang/SetFieldProc;

    invoke-direct {v0, p0, p1}, Lkawa/lang/SetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static recordPredicate(Ljava/lang/Object;)Lgnu/mapping/Procedure;
    .locals 1

    .line 29
    new-instance v0, Lkawa/lib/reflection$frame;

    invoke-direct {v0}, Lkawa/lib/reflection$frame;-><init>()V

    iput-object p0, v0, Lkawa/lib/reflection$frame;->rtype:Ljava/lang/Object;

    .line 30
    iget-object p0, v0, Lkawa/lib/reflection$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-object p0
.end method

.method public static recordTypeDescriptor(Ljava/lang/Object;)Lgnu/bytecode/Type;
    .locals 0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    return-object p0
.end method

.method public static recordTypeFieldNames(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 4

    .line 45
    :try_start_0
    invoke-static {p0}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lkawa/lang/Record;->typeFieldNames(Lgnu/bytecode/ClassType;)Lgnu/lists/LList;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "kawa.lang.Record.typeFieldNames(class-type)"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public static recordTypeName(Lgnu/bytecode/ClassType;)Ljava/lang/String;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 44
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p2}, Lkawa/lib/reflection;->recordTypeFieldNames(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    .line 40
    :pswitch_1
    :try_start_0
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lkawa/lib/reflection;->recordTypeName(Lgnu/bytecode/ClassType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "record-type-name"

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 34
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/reflection;->recordTypeDescriptor(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_3
    invoke-static {p2}, Lkawa/lib/reflection;->recordPredicate(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_4
    invoke-static {p2}, Lkawa/lib/reflection;->isRecord(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 17
    :cond_1
    :try_start_1
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;)Lkawa/lang/RecordConstructor;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "record-constructor"

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 44
    :cond_2
    invoke-static {p2}, Lkawa/lib/reflection;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "subtype?"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    .line 113
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceToType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p1, p2}, Lkawa/lib/reflection;->isSubtype(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 23
    :cond_2
    :try_start_2
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {p1, v4}, Lkawa/lib/reflection;->recordModifier(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/SetFieldProc;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "record-modifier"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 20
    :cond_4
    :try_start_3
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-static {p1, v4}, Lkawa/lib/reflection;->recordAccessor(Lgnu/bytecode/ClassType;Ljava/lang/String;)Lkawa/lang/GetFieldProc;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "record-accessor"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 17
    :cond_6
    :try_start_4
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassType(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p1, p3}, Lkawa/lib/reflection;->recordConstructor(Lgnu/bytecode/ClassType;Ljava/lang/Object;)Lkawa/lang/RecordConstructor;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "record-constructor"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_7
    if-nez p2, :cond_8

    goto :goto_3

    .line 14
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    :try_start_5
    check-cast p3, Lgnu/lists/LList;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {v4, p3}, Lkawa/lib/reflection;->makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "make-record-type"

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    const v4, -0xbffff

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 17
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 44
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 40
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v4

    .line 34
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 29
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 26
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 17
    :cond_1
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v4

    .line 0
    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    const v5, -0xbffff

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceToTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_1
    return v2

    :cond_2
    return v5

    .line 23
    :cond_3
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_4
    return v5

    .line 20
    :cond_5
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_6
    return v5

    .line 17
    :cond_7
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceToClassTypeOrNull(Ljava/lang/Object;)Lgnu/bytecode/ClassType;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_8
    return v5

    .line 14
    :cond_9
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/lists/LList;

    if-eqz p2, :cond_a

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_a
    return v2
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
