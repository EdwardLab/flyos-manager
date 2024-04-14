.class public Lgnu/kawa/slib/enums;
.super Lgnu/expr/ModuleBody;
.source "enums.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nenums.scm\nScheme\n*S Scheme\n*F\n+ 1 enums.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm\n*L\n4#1,61:4\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

.field public static final $instance:Lgnu/kawa/slib/enums;

.field static final Lit0:Lgnu/lists/PairWithPosition;

.field static final Lit1:Lgnu/lists/PairWithPosition;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxPattern;

.field static final Lit13:Lkawa/lang/SyntaxTemplate;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxPattern;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lkawa/lang/SyntaxPattern;

.field static final Lit23:Lkawa/lang/SyntaxTemplate;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lkawa/lang/SyntaxTemplate;

.field static final Lit26:Lkawa/lang/SyntaxTemplate;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lkawa/lang/SyntaxTemplate;

.field static final Lit3:Lgnu/lists/PairWithPosition;

.field static final Lit30:Lkawa/lang/SyntaxTemplate;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxTemplate;

.field static final Lit35:Lkawa/lang/SyntaxTemplate;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxTemplate;

.field static final Lit4:Lgnu/lists/PairWithPosition;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/mapping/SimpleSymbol;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/expr/Keyword;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/expr/Keyword;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/lists/PairWithPosition;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/mapping/SimpleSymbol;

.field static final Lit52:Lgnu/mapping/SimpleSymbol;

.field static final Lit53:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/lists/PairWithPosition;

.field static final Lit7:Lgnu/lists/PairWithPosition;

.field static final Lit8:Lgnu/lists/PairWithPosition;

.field static final Lit9:Lgnu/lists/PairWithPosition;

.field public static final define$Mnenum:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "final"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit53:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "enum"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/enums;->Lit52:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "num"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/enums;->Lit51:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "str"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/enums;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "*init*"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/enums;->Lit49:Lgnu/mapping/SimpleSymbol;

    const-string v5, "access"

    invoke-static {v5}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/enums;->Lit48:Lgnu/expr/Keyword;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "String"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/enums;->Lit47:Lgnu/mapping/SimpleSymbol;

    const-string v7, "allocation"

    invoke-static {v7}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v7

    sput-object v7, Lgnu/kawa/slib/enums;->Lit46:Lgnu/expr/Keyword;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "static"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/enums;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "java.lang.Enum"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/enums;->Lit44:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "quote"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/enums;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "::"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/enums;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "s"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/enums;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "valueOf"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/enums;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lkawa/lang/SyntaxTemplate;

    const/4 v15, 0x0

    move-object/from16 v16, v4

    new-array v4, v15, [Ljava/lang/Object;

    move-object/from16 v17, v2

    const-string v2, "\u0001\u0001\u0001\u0003\u0003"

    move-object/from16 v18, v3

    const-string v3, "\u0010"

    invoke-direct {v14, v2, v3, v4, v15}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v14, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    new-instance v4, Lkawa/lang/SyntaxTemplate;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-direct {v4, v2, v3, v14, v15}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v3, Lkawa/lang/SyntaxTemplate;

    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/Object;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v15, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/enums.scm"

    move-object/from16 v19, v5

    const v5, 0x47042

    invoke-static {v12, v4, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v14, v5

    const-string v4, "\u0018\u0004"

    invoke-direct {v3, v2, v4, v14, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v3, Lkawa/lang/SyntaxTemplate;

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v1

    const-string v1, "$lookup$"

    invoke-direct {v5, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v0

    const-string v0, "quasiquote"

    invoke-direct {v5, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v0, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v9, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    const v5, 0x47007

    invoke-static {v1, v0, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v14, v1

    invoke-direct {v3, v2, v4, v14, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x46013

    invoke-static {v8, v14, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    invoke-static {v10, v14, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-direct {v0, v2, v4, v5, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x46006

    invoke-static {v7, v14, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-direct {v0, v2, v4, v5, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x45019

    invoke-static {v11, v14, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-direct {v0, v2, v4, v5, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0x45012

    invoke-static {v6, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x45010

    invoke-static {v11, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x4500f

    invoke-static {v12, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x45006

    invoke-static {v13, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v4, v3, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v5, 0x4102c

    move-object/from16 v12, v21

    invoke-static {v12, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x41026

    move-object/from16 v13, v20

    invoke-static {v13, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v14, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    invoke-static {v10, v1, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v4, v3, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x4101d

    move-object/from16 v13, v19

    invoke-static {v13, v14, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v4, v3, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x4100c

    invoke-static {v9, v14, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v4, v3, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-simple-class"

    invoke-direct {v1, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x4000a

    invoke-static {v1, v5, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-direct {v0, v2, v4, v3, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "\u0008%#"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "\u0013"

    invoke-direct {v0, v2, v3, v1, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "\u0008\u001d\u001b"

    invoke-direct {v0, v2, v3, v1, v4}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "[]"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "\u000b"

    invoke-direct {v0, v2, v3, v1, v5}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "\u000c\u0007\u000c\u000f\u000c\u0017,\r\u001f\u0018\u0008\u0008\r\' \u0008\u0008"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v1, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%define-enum"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/enums;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-enum"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/enums;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v14, "findkeywords"

    const/4 v2, 0x1

    aput-object v14, v3, v2

    const-string v5, "\u0001\u0001\u0003"

    const-string v12, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b\t\u0010\u0008\u0015\u0013"

    invoke-direct {v1, v5, v12, v3, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u000c\u000f\r\u0017\u0010\u0008\u0008"

    const/4 v12, 0x3

    invoke-direct {v1, v5, v3, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u000c\u000f\u0008"

    const/4 v12, 0x2

    invoke-direct {v1, v5, v3, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u0008"

    const/4 v12, 0x1

    invoke-direct {v1, v5, v3, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v5, "\u0001\u0001\u0003\u0003"

    const-string v2, "\u0011\u0018\u0004\t\u000b\u0019\u0008\u0015\u0013\u0008\u001d\u001b"

    invoke-direct {v1, v5, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const-string v5, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\r\u001f\u0018\u0008\u0008"

    const/4 v12, 0x4

    invoke-direct {v1, v5, v2, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const/4 v2, 0x1

    aput-object v14, v5, v2

    const-string v12, "\u0001\u0001\u0003\u0001\u0001\u0003"

    const-string v3, "\u0011\u0018\u0004\u0011\u0018\u000c\t\u000b9\t\u001b\t#\u0008\u0015\u0013\u0008-+"

    invoke-direct {v1, v12, v3, v5, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    const-string v2, "\u001b"

    invoke-direct {v1, v12, v2, v5, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v14, v5, v3

    const-string v2, "\u000c\u0007\u000c\u0002\u000c\u000f,\r\u0017\u0010\u0008\u0008\u000c\u001f\u000c\'\r/(\u0008\u0008"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v5, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1f025

    invoke-static {v8, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    invoke-static {v10, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1f018

    invoke-static {v7, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1f00e

    invoke-static {v11, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "values"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x1f005

    invoke-static {v1, v2, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x16015

    invoke-static {v6, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x16012

    invoke-static {v11, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x1600d

    move-object/from16 v3, v18

    invoke-static {v3, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "int"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v12, 0x16025

    invoke-static {v5, v6, v15, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x16022

    invoke-static {v11, v5, v15, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1601d

    move-object/from16 v12, v17

    invoke-static {v12, v5, v15, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v5, v14, v15, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    invoke-static {v1, v5, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x16005

    move-object/from16 v5, v16

    invoke-static {v5, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v6, "private"

    invoke-direct {v2, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x1700e

    invoke-static {v2, v6, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    invoke-static {v10, v2, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v14, "invoke-special"

    invoke-direct {v6, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "this"

    invoke-direct {v14, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v17, v4

    const v4, 0x18024

    invoke-static {v0, v14, v15, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v4, 0x1802c

    invoke-static {v5, v14, v15, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    invoke-static {v10, v5, v15, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x18037

    invoke-static {v12, v5, v15, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v12, 0x18033

    invoke-static {v3, v5, v15, v12}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v5, 0x1802b

    invoke-static {v4, v3, v15, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const v4, 0x18024

    invoke-static {v0, v3, v15, v4}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v3, 0x18015

    invoke-static {v9, v0, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v3, 0x18005

    invoke-static {v6, v0, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v4, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v3, 0x1700d

    invoke-static {v2, v0, v15, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v2, 0x17005

    invoke-static {v13, v0, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v2, 0x16004

    invoke-static {v1, v0, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    const-string v0, "init"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1200d

    invoke-static {v0, v1, v15, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x11030

    move-object/from16 v2, v21

    invoke-static {v2, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x1102a

    move-object/from16 v2, v20

    invoke-static {v2, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v2, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    invoke-static {v10, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x11021

    invoke-static {v13, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x1101a

    invoke-static {v8, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    invoke-static {v10, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x1100d

    invoke-static {v7, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x1000d

    invoke-static {v11, v0, v15, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    new-instance v0, Lgnu/kawa/slib/enums;

    invoke-direct {v0}, Lgnu/kawa/slib/enums;-><init>()V

    sput-object v0, Lgnu/kawa/slib/enums;->$instance:Lgnu/kawa/slib/enums;

    .line 5
    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x0

    const/16 v3, 0x1001

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v4, v17

    invoke-static {v4, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->define$Mnenum:Lkawa/lang/Macro;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    invoke-direct {v1, v0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    move-object/from16 v2, v16

    invoke-static {v2, v1, v0}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/enums;->$Prvt$$Pcdefine$Mnenum:Lkawa/lang/Macro;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/enums;->Lit12:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v3, Lgnu/kawa/slib/enums;->Lit13:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/enums;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_0
    sget-object v1, Lgnu/kawa/slib/enums;->Lit15:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/enums;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    sget-object v1, Lgnu/kawa/slib/enums;->Lit17:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const-string v0, "no enum type name given"

    .line 42
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_0
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object v1, Lgnu/kawa/slib/enums;->Lit18:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "no enum constants given"

    .line 43
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    move-object v0, v1

    :goto_1
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object v1, Lgnu/kawa/slib/enums;->Lit19:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/enums;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_6
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 53
    invoke-static {v1, v2}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/enums;->Lit22:Lkawa/lang/SyntaxPattern;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v4, Lgnu/kawa/slib/enums;->Lit23:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v1, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, -0x2

    :try_start_0
    check-cast v2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v2, v6, v3

    .line 56
    sget-object v7, Lgnu/kawa/slib/enums;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v6}, Lgnu/kawa/slib/enums;->symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    .line 57
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    sget-object v9, Lgnu/kawa/slib/enums;->Lit25:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v9, v1, v7}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    :try_start_1
    check-cast v7, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    invoke-static {v7}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    .line 59
    invoke-static {v2, v7, v3}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object v9

    .line 60
    invoke-static {}, Lgnu/kawa/slib/enums;->makeInit()Lgnu/lists/PairWithPosition;

    move-result-object v10

    .line 61
    invoke-static {v6, v7}, Lgnu/kawa/slib/enums;->makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;

    move-result-object v6

    .line 62
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v7

    sget-object v11, Lgnu/kawa/slib/enums;->Lit26:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v11, v1, v7}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v7

    :try_start_2
    check-cast v7, Lgnu/lists/LList;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v11

    sget-object v12, Lgnu/kawa/slib/enums;->Lit27:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v12, v1, v11}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v11

    :try_start_3
    check-cast v11, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .line 64
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v4

    new-array v12, v5, [Ljava/lang/Object;

    sget-object v13, Lgnu/kawa/slib/enums;->Lit28:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v13, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v3

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v13, v3

    sget-object v14, Lgnu/kawa/slib/enums;->Lit29:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v14, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/enums;->Lit30:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v8, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v15, v3

    sget-object v8, Lgnu/kawa/slib/enums;->Lit31:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v8, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v12

    new-array v12, v5, [Ljava/lang/Object;

    invoke-static {v0, v7}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v12, v3

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v10}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v3

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v10, v3

    sget-object v6, Lgnu/kawa/slib/enums;->Lit32:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v6, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit33:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    const/16 v17, 0x0

    aput-object v5, v3, v17

    move-object/from16 v19, v13

    const/4 v5, 0x2

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v13, v17

    move-object/from16 v20, v14

    new-array v14, v5, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/slib/enums;->Lit34:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v14, v17

    sget-object v5, Lgnu/kawa/slib/enums;->Lit35:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v15

    sget-object v15, Lgnu/kawa/slib/enums;->Lit36:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v15, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v8

    move-object/from16 v23, v12

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v12, v17

    sget-object v2, Lgnu/kawa/slib/enums;->Lit37:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v12, v8

    invoke-static {v12}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v15, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v12, Lgnu/kawa/slib/enums;->Lit38:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v12, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v2, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v5, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    aput-object v2, v14, v8

    invoke-static {v14}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v13, v8

    invoke-static {v13}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v9}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x0

    aput-object v6, v5, v9

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v11}, Lkawa/lib/std_syntax;->datum$To$SyntaxObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v9

    sget-object v0, Lgnu/kawa/slib/enums;->Lit39:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v0, v1, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v5}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v10, v8

    invoke-static {v10}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v23, v8

    invoke-static/range {v23 .. v23}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v21, v8

    invoke-static/range {v21 .. v21}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-static {v1, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v19, v8

    invoke-static/range {v19 .. v19}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v16, v8

    invoke-static/range {v16 .. v16}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 63
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "other-defs"

    invoke-direct {v0, v1, v2, v4, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 62
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "opts"

    invoke-direct {v0, v1, v2, v4, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 57
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "e-names"

    invoke-direct {v0, v1, v2, v4, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 55
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "t-name"

    invoke-direct {v0, v1, v3, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    const-string v1, "syntax-case"

    .line 64
    invoke-static {v1, v0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 16
    sget-object v4, Lgnu/kawa/slib/enums;->Lit0:Lgnu/lists/PairWithPosition;

    aput-object v4, v3, v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v2

    new-array v5, v0, [Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/enums;->Lit1:Lgnu/lists/PairWithPosition;

    aput-object v6, v5, v2

    sget-object v6, Lgnu/kawa/slib/enums;->Lit2:Lgnu/lists/PairWithPosition;

    new-array v7, v0, [Ljava/lang/Object;

    sget-object v8, Lgnu/kawa/slib/enums;->Lit3:Lgnu/lists/PairWithPosition;

    aput-object v8, v7, v2

    sget-object v8, Lgnu/kawa/slib/enums;->Lit4:Lgnu/lists/PairWithPosition;

    new-array v9, v0, [Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/enums;->Lit5:Lgnu/lists/PairWithPosition;

    aput-object v10, v9, v2

    new-array v10, v0, [Ljava/lang/Object;

    aput-object p0, v10, v2

    new-array p0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    sget-object p2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p1}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v10, v0

    invoke-static {v10}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v9, v0

    invoke-static {v9}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v8, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v7, v0

    invoke-static {v7}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v6, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v5, v0

    invoke-static {v5}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v4, v0

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static makeInit()Lgnu/lists/PairWithPosition;
    .locals 1

    .line 20
    sget-object v0, Lgnu/kawa/slib/enums;->Lit6:Lgnu/lists/PairWithPosition;

    return-object v0
.end method

.method static makeValues(Lgnu/mapping/Symbol;Lgnu/lists/LList;)Lgnu/lists/Pair;
    .locals 8

    .line 31
    sget-object v0, Lgnu/kawa/slib/enums;->Lit7:Lgnu/lists/PairWithPosition;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/enums;->Lit8:Lgnu/lists/PairWithPosition;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v4

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/enums;->Lit9:Lgnu/lists/PairWithPosition;

    aput-object v6, v5, v4

    sget-object v6, Lgnu/kawa/slib/enums;->Lit10:Lgnu/lists/PairWithPosition;

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p0, v7, v4

    new-array p0, v1, [Ljava/lang/Object;

    aput-object p1, p0, v4

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x1

    aput-object p1, p0, v1

    invoke-static {p0}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static {v7}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    invoke-static {v6, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    aput-object p0, v5, v1

    invoke-static {v5}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    return-object p0
.end method

.method static mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;
    .locals 3

    .line 48
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    check-cast v0, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p0, v0, p2}, Lgnu/kawa/slib/enums;->makeFieldDesc(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 50
    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_1
    check-cast p1, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr p2, v1

    invoke-static {p0, p1, p2}, Lgnu/kawa/slib/enums;->mapNames(Lgnu/mapping/Symbol;Lgnu/lists/LList;I)Lgnu/lists/LList;

    move-result-object p0

    invoke-static {v0, p0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "map-names"

    invoke-direct {p2, p0, v0, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p0

    .line 49
    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "make-field-desc"

    invoke-direct {p1, p0, p2, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method static symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .locals 5

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p0

    .line 9
    sget-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v1, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v4, 0x1

    if-ne p0, v3, :cond_0

    invoke-static {v2}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string->symbol"

    invoke-direct {v1, v0, v2, v4, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_0
    :try_start_1
    check-cast p0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p0

    :try_start_2
    check-cast p0, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p0}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    move-object p0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "symbol->string"

    invoke-direct {v1, v0, v2, v4, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "arg0"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lgnu/kawa/slib/enums;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Lgnu/kawa/slib/enums;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 4
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
