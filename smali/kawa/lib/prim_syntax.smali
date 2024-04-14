.class public Lkawa/lib/prim_syntax;
.super Lgnu/expr/ModuleBody;
.source "prim_syntax.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprim_syntax.scm\nScheme\n*S Scheme\n*F\n+ 1 prim_syntax.scm\n/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm\n*L\n3#1,123:3\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/prim_syntax;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit10:Lkawa/lang/SyntaxRules;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lkawa/lang/SyntaxRules;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lkawa/lang/SyntaxPattern;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxPattern;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxTemplate;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lkawa/lang/SyntaxPattern;

.field static final Lit22:Lkawa/lang/SyntaxTemplate;

.field static final Lit23:Lkawa/lang/SyntaxPattern;

.field static final Lit24:Lkawa/lang/SyntaxTemplate;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lkawa/lang/SyntaxPattern;

.field static final Lit27:Lkawa/lang/SyntaxTemplate;

.field static final Lit28:Lkawa/lang/SyntaxTemplate;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit30:Lkawa/lang/SyntaxPattern;

.field static final Lit31:Lkawa/lang/SyntaxTemplate;

.field static final Lit32:Lkawa/lang/SyntaxTemplate;

.field static final Lit33:Lkawa/lang/SyntaxTemplate;

.field static final Lit34:Lkawa/lang/SyntaxPattern;

.field static final Lit35:Lkawa/lang/SyntaxPattern;

.field static final Lit36:Lkawa/lang/SyntaxTemplate;

.field static final Lit37:Lkawa/lang/SyntaxTemplate;

.field static final Lit38:Lkawa/lang/SyntaxTemplate;

.field static final Lit39:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lkawa/lang/SyntaxTemplate;

.field static final Lit41:Lkawa/lang/SyntaxTemplate;

.field static final Lit42:Lkawa/lang/SyntaxTemplate;

.field static final Lit43:Lkawa/lang/SyntaxPattern;

.field static final Lit44:Lkawa/lang/SyntaxPattern;

.field static final Lit45:Lgnu/mapping/SimpleSymbol;

.field static final Lit46:Lgnu/mapping/SimpleSymbol;

.field static final Lit47:Lgnu/mapping/SimpleSymbol;

.field static final Lit48:Lgnu/mapping/SimpleSymbol;

.field static final Lit49:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit50:Lgnu/mapping/SimpleSymbol;

.field static final Lit51:Lgnu/math/IntNum;

.field static final Lit52:Lgnu/math/IntNum;

.field static final Lit53:Lgnu/math/IntNum;

.field static final Lit54:Lgnu/math/IntNum;

.field static final Lit55:Lgnu/math/IntNum;

.field static final Lit56:Lgnu/math/IntNum;

.field static final Lit57:Lgnu/mapping/SimpleSymbol;

.field static final Lit58:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final define:Lkawa/lang/Macro;

.field public static final define$Mnconstant:Lkawa/lang/Macro;

.field public static final define$Mnprivate:Lkawa/lang/Macro;

.field public static final define$Mnsyntax:Lkawa/lang/Macro;

.field public static final if:Lkawa/lang/Macro;

.field public static final letrec:Lkawa/lang/Macro;

.field public static final syntax$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

.field public static final syntax$Mnerror:Lgnu/expr/ModuleMethod;

.field public static final try$Mncatch:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 51

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lambda"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit58:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "%define-syntax"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit57:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x0

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    sput-object v3, Lkawa/lib/prim_syntax;->Lit56:Lgnu/math/IntNum;

    const/4 v4, 0x1

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    sput-object v5, Lkawa/lib/prim_syntax;->Lit55:Lgnu/math/IntNum;

    const/4 v6, 0x4

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    sput-object v7, Lkawa/lib/prim_syntax;->Lit54:Lgnu/math/IntNum;

    const/4 v8, 0x5

    invoke-static {v8}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    sput-object v9, Lkawa/lib/prim_syntax;->Lit53:Lgnu/math/IntNum;

    const/16 v10, 0x8

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    sput-object v11, Lkawa/lib/prim_syntax;->Lit52:Lgnu/math/IntNum;

    const/16 v12, 0x9

    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    sput-object v12, Lkawa/lib/prim_syntax;->Lit51:Lgnu/math/IntNum;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "%define"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/prim_syntax;->Lit50:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "::"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/prim_syntax;->Lit49:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v10, "quasiquote"

    invoke-direct {v15, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/prim_syntax;->Lit48:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v4, "kawa.lang.SyntaxForms"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/prim_syntax;->Lit47:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v8, "$lookup$"

    invoke-direct {v15, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/prim_syntax;->Lit46:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v6, "set!"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/prim_syntax;->Lit45:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lang/SyntaxPattern;

    move-object/from16 v18, v0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "\u001b"

    move-object/from16 v19, v1

    const/4 v1, 0x4

    invoke-direct {v15, v2, v0, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v15, Lkawa/lib/prim_syntax;->Lit44:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v15, "\u001c\u000c\u001f\u0008#"

    const/4 v1, 0x5

    invoke-direct {v0, v15, v2, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit43:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v15, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000"

    move-object/from16 v20, v3

    const-string v3, ":"

    invoke-direct {v0, v15, v3, v2, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit42:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v6, v3, v1

    const-string v2, "\u0011\u0018\u0004\t\u001b\u00083"

    invoke-direct {v0, v15, v2, v3, v1}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit41:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v2, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v21, v5

    const-string v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm"

    move-object/from16 v22, v7

    const v7, 0x7303e

    invoke-static {v2, v1, v5, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v1, "\t\u001b\t#\t+\u0018\u0004"

    invoke-direct {v0, v15, v1, v3, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit40:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "L\u000c\u001f\u000c\'\u000c/\u000c7\u0008;"

    const/16 v7, 0x8

    invoke-direct {v0, v3, v1, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit39:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "\u0001\u0001\u0000\u0001\u0001\u0000"

    const-string v7, "*"

    invoke-direct {v0, v3, v7, v1, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit38:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v2

    const-string v6, "\u0011\u0018\u0004\t\u001b\u0008#"

    invoke-direct {v0, v3, v6, v7, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit37:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v1, [Ljava/lang/Object;

    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x6e022

    invoke-static {v1, v7, v5, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v1, "\t\u001b\u0018\u0004"

    invoke-direct {v0, v3, v1, v6, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit36:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, ",\u000c\u001f\u000c\'\u0008+"

    const/4 v6, 0x6

    invoke-direct {v0, v3, v1, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit35:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "\u0008"

    const/4 v7, 0x3

    invoke-direct {v0, v3, v1, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit34:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "\u0001\u0001\u0000"

    const-string v15, "\u0012"

    invoke-direct {v0, v3, v15, v1, v2}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v15, "%let"

    invoke-direct {v1, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v6, 0x7d00b

    invoke-static {v1, v15, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const-string v1, "\u0018\u0004"

    invoke-direct {v0, v3, v1, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u000b"

    invoke-direct {v0, v3, v2, v1, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v3, "\u000c\u0007\u000c\u000f\u0013"

    invoke-direct {v0, v3, v1, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "letrec"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v6, v15

    const-string v7, "\u0001\u0001\u0003\u0003\u0002"

    const-string v15, "(\u0008\u0015A\u0008\t\u0013\u0011\u0018\u0004\u0008\u001b\""

    invoke-direct {v1, v7, v15, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u0001\u0001\u0003\u0003\u0002"

    invoke-direct {v1, v7, v2, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u000c\u0007\u000c\u000f-\u000c\u0017\u000c\u001f#\u0010\u0018\u0008"

    const/4 v15, 0x5

    invoke-direct {v1, v7, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v6, "try-catch"

    invoke-direct {v1, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxTemplate;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v15, "\u0001\u0000"

    move-object/from16 v23, v0

    const-string v0, "\n"

    invoke-direct {v6, v15, v0, v7, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v6, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u000c\u0007\u000b"

    const/4 v15, 0x2

    invoke-direct {v0, v7, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u0001\u0001\u0001\u0001\u0001\u0000"

    const-string v15, "#"

    invoke-direct {v0, v7, v15, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u000c\'+"

    const/4 v15, 0x6

    invoke-direct {v0, v7, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u0001\u0001\u0001\u0001"

    const-string v15, "\u001b"

    invoke-direct {v0, v7, v15, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v15, "\u0013"

    invoke-direct {v0, v7, v15, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {v0, v7, v2, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    const/4 v15, 0x4

    invoke-direct {v0, v7, v6, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u0001\u0001\u0001"

    const-string v15, "\u0013"

    invoke-direct {v0, v7, v15, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "\u0001\u0001\u0001"

    invoke-direct {v0, v7, v2, v6, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v2, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "if"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v15, "syntax-body->expression"

    invoke-direct {v7, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/prim_syntax;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    aput-object v7, v6, v15

    new-array v15, v3, [Lkawa/lang/SyntaxRule;

    new-instance v30, Lkawa/lang/SyntaxRule;

    new-instance v3, Lkawa/lang/SyntaxPattern;

    move-object/from16 v32, v0

    move-object/from16 v31, v1

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u000c\u0018\u000c\u0007\u0008"

    move-object/from16 v33, v7

    const/4 v7, 0x1

    invoke-direct {v3, v1, v0, v7}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v0, v7, [Ljava/lang/Object;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v7, "rewriteBody"

    invoke-direct {v1, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v10, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v4, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const v7, 0x42007

    invoke-static {v8, v1, v5, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v0, v7

    const-string v26, "\u0001"

    const-string v27, "\u0011\u0018\u0004\u0008\u0003"

    const/16 v29, 0x0

    move-object/from16 v24, v30

    move-object/from16 v25, v3

    move-object/from16 v28, v0

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v30, v15, v7

    const/4 v0, 0x1

    invoke-direct {v2, v6, v15, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lkawa/lib/prim_syntax;->Lit12:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v15, "syntax->expression"

    invoke-direct {v6, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/prim_syntax;->Lit9:Lgnu/mapping/SimpleSymbol;

    aput-object v6, v3, v7

    new-array v15, v0, [Lkawa/lang/SyntaxRule;

    new-instance v30, Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    move-object/from16 v34, v2

    new-array v2, v7, [Ljava/lang/Object;

    const-string v7, "\u000c\u0018\u000c\u0007\u0008"

    move-object/from16 v35, v6

    const/4 v6, 0x1

    invoke-direct {v0, v7, v2, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "rewrite"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v10, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v6, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v4, v6}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    const v6, 0x3d007

    invoke-static {v8, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v26, "\u0001"

    const-string v27, "\u0011\u0018\u0004\u0008\u0003"

    move-object/from16 v24, v30

    move-object/from16 v25, v0

    move-object/from16 v28, v2

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v30, v15, v5

    const/4 v0, 0x1

    invoke-direct {v1, v3, v15, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit10:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v2, "syntax-error"

    invoke-direct {v0, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/prim_syntax;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-constant"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/prim_syntax;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v6, 0x1

    aput-object v14, v4, v6

    const/4 v7, 0x2

    aput-object v8, v4, v7

    const/4 v10, 0x5

    new-array v15, v10, [Lkawa/lang/SyntaxRule;

    new-instance v30, Lkawa/lang/SyntaxRule;

    new-instance v10, Lkawa/lang/SyntaxPattern;

    move-object/from16 v36, v1

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v8, v1, v5

    aput-object v14, v1, v6

    const-string v7, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\n\u000c\u001f\u000c\'\u0008"

    const/4 v6, 0x5

    invoke-direct {v10, v7, v1, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v13, v6, v5

    const/4 v1, 0x1

    aput-object v8, v6, v1

    const/4 v1, 0x2

    aput-object v12, v6, v1

    const-string v26, "\u0001\u0001\u0001\u0001\u0001"

    const-string v27, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    move-object/from16 v24, v30

    move-object/from16 v25, v10

    move-object/from16 v28, v6

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v30, v15, v1

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    move-object/from16 v30, v0

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v8, v0, v1

    const-string v10, "\u000c\u0018\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u000c\u001f\u0008"

    const/4 v1, 0x4

    invoke-direct {v6, v10, v0, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v8, v0, v1

    const/4 v1, 0x2

    aput-object v11, v0, v1

    const-string v26, "\u0001\u0001\u0001\u0001"

    const-string v27, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v28, v0

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x1

    aput-object v5, v15, v0

    new-instance v1, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v6, "\u000c\u0018\u001c\u000c\u0007\u000b\u0013"

    move-object/from16 v37, v3

    const/4 v3, 0x3

    invoke-direct {v5, v6, v0, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v13, v0, v3

    const/16 v3, 0xa

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    const/16 v17, 0x1

    aput-object v3, v0, v17

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v38, v6

    const/4 v6, 0x2

    aput-object v3, v0, v6

    const-string v26, "\u0001\u0000\u0000"

    const-string v27, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    move-object/from16 v24, v1

    move-object/from16 v25, v5

    move-object/from16 v28, v0

    invoke-direct/range {v24 .. v29}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v1, v15, v6

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v5, v17

    const-string v3, "\u000c\u0018\u000c\u0007\u000c\u0002\u000c\u000f\u000c\u0017\u0008"

    move-object/from16 v25, v10

    const/4 v10, 0x3

    invoke-direct {v1, v3, v5, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v13, v5, v17

    const/4 v6, 0x1

    aput-object v12, v5, v6

    const-string v41, "\u0001\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/16 v44, 0x0

    move-object/from16 v39, v0

    move-object/from16 v40, v1

    move-object/from16 v43, v5

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x3

    aput-object v0, v15, v1

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    const/4 v6, 0x2

    invoke-direct {v5, v12, v10, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v6, v1

    const/4 v1, 0x1

    aput-object v11, v6, v1

    const-string v41, "\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    move-object/from16 v39, v0

    move-object/from16 v40, v5

    move-object/from16 v43, v6

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x4

    aput-object v0, v15, v1

    const/4 v0, 0x5

    invoke-direct {v2, v4, v15, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v2, Lkawa/lib/prim_syntax;->Lit7:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-private"

    invoke-direct {v1, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/prim_syntax;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v6, 0x1

    aput-object v14, v4, v6

    const/4 v10, 0x2

    aput-object v8, v4, v10

    const/4 v11, 0x5

    new-array v15, v11, [Lkawa/lang/SyntaxRule;

    new-instance v24, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    move-object/from16 v26, v2

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v8, v2, v5

    aput-object v14, v2, v6

    const/4 v10, 0x5

    invoke-direct {v11, v7, v2, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v13, v10, v5

    aput-object v8, v10, v6

    const/4 v2, 0x2

    aput-object v9, v10, v2

    const-string v41, "\u0001\u0001\u0001\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    move-object/from16 v39, v24

    move-object/from16 v40, v11

    move-object/from16 v43, v10

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x0

    aput-object v24, v15, v2

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v8, v11, v2

    move-object/from16 v10, v25

    const/4 v2, 0x4

    invoke-direct {v6, v10, v11, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v11, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v11, v2

    const/4 v2, 0x1

    aput-object v8, v11, v2

    const/4 v2, 0x2

    aput-object v22, v11, v2

    const-string v41, "\u0001\u0001\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move-object/from16 v43, v11

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x1

    aput-object v5, v15, v2

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/Object;

    move-object/from16 v24, v1

    move-object/from16 v11, v38

    const/4 v1, 0x3

    invoke-direct {v6, v11, v2, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v13, v2, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v2, v16

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x2

    aput-object v1, v2, v11

    const-string v41, "\u0001\u0000\u0000"

    const-string v42, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move-object/from16 v43, v2

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v5, v15, v11

    new-instance v1, Lkawa/lang/SyntaxRule;

    new-instance v2, Lkawa/lang/SyntaxPattern;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v6, v16

    const/4 v5, 0x3

    invoke-direct {v2, v3, v6, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v13, v5, v16

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const-string v47, "\u0001\u0001\u0001"

    const-string v48, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    const/16 v50, 0x0

    move-object/from16 v45, v1

    move-object/from16 v46, v2

    move-object/from16 v49, v5

    invoke-direct/range {v45 .. v50}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x3

    aput-object v1, v15, v2

    new-instance v1, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v11, 0x2

    invoke-direct {v5, v12, v9, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v13, v9, v6

    const/4 v2, 0x1

    aput-object v22, v9, v2

    const-string v41, "\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    move-object/from16 v39, v1

    move-object/from16 v40, v5

    move-object/from16 v43, v9

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v2, 0x4

    aput-object v1, v15, v2

    const/4 v1, 0x5

    invoke-direct {v0, v4, v15, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v1, Lkawa/lang/SyntaxRules;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define"

    invoke-direct {v2, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/prim_syntax;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v6, 0x1

    aput-object v14, v4, v6

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const/4 v11, 0x5

    new-array v15, v11, [Lkawa/lang/SyntaxRule;

    new-instance v16, Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxPattern;

    move-object/from16 v22, v0

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v8, v0, v5

    aput-object v14, v0, v6

    const/4 v9, 0x5

    invoke-direct {v11, v7, v0, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v13, v7, v5

    aput-object v8, v7, v6

    const/4 v0, 0x2

    aput-object v21, v7, v0

    const-string v41, "\u0001\u0001\u0001\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\t\u001b\u0008#"

    move-object/from16 v39, v16

    move-object/from16 v40, v11

    move-object/from16 v43, v7

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v16, v15, v0

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v8, v9, v0

    const/4 v11, 0x4

    invoke-direct {v6, v10, v9, v11}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v13, v9, v0

    aput-object v8, v9, v7

    const/4 v0, 0x2

    aput-object v20, v9, v0

    const-string v41, "\u0001\u0001\u0001\u0001"

    const-string v42, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u001b"

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move-object/from16 v43, v9

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x1

    aput-object v5, v15, v0

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    move-object/from16 v11, v38

    const/4 v0, 0x3

    invoke-direct {v6, v11, v9, v0}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v13, v9, v7

    const/4 v0, 0x2

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v9, v16

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v9, v0

    const-string v41, "\u0001\u0000\u0000"

    const-string v42, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\t\n\u0012"

    move-object/from16 v39, v5

    move-object/from16 v40, v6

    move-object/from16 v43, v9

    invoke-direct/range {v39 .. v44}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v5, v15, v0

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v9, v16

    const/4 v14, 0x3

    invoke-direct {v6, v3, v9, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v13, v3, v16

    aput-object v21, v3, v7

    const-string v47, "\u0001\u0001\u0001"

    const-string v48, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\t\u000b\u0008\u0013"

    move-object/from16 v45, v5

    move-object/from16 v46, v6

    move-object/from16 v49, v3

    invoke-direct/range {v45 .. v50}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x3

    aput-object v5, v15, v0

    new-instance v3, Lkawa/lang/SyntaxRule;

    new-instance v5, Lkawa/lang/SyntaxPattern;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-direct {v5, v12, v7, v9}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v13, v7, v6

    const/4 v0, 0x1

    aput-object v20, v7, v0

    const-string v40, "\u0001\u0001"

    const-string v41, "\u0011\u0018\u0004\t\u0003\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u000b"

    const/16 v43, 0x0

    move-object/from16 v38, v3

    move-object/from16 v39, v5

    move-object/from16 v42, v7

    invoke-direct/range {v38 .. v43}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    invoke-direct {v1, v4, v15, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v1, Lkawa/lib/prim_syntax;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v5, "define-syntax"

    invoke-direct {v3, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/prim_syntax;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v6, 0x1

    aput-object v8, v4, v6

    const/4 v7, 0x4

    new-array v9, v7, [Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxRule;

    new-instance v13, Lkawa/lang/SyntaxPattern;

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v8, v14, v5

    const-string v15, "\u000c\u0018l\\\u000c\u0002\u000c\u0007,\u000c\u000f\u000c\u0017\u0008\u0008\u001b#"

    const/4 v6, 0x5

    invoke-direct {v13, v15, v14, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v19, v14, v5

    const/4 v5, 0x1

    aput-object v8, v14, v5

    const/4 v5, 0x2

    aput-object v18, v14, v5

    const-string v40, "\u0001\u0001\u0001\u0000\u0000"

    const-string v41, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u0014\t\u001a\""

    move-object/from16 v38, v7

    move-object/from16 v39, v13

    move-object/from16 v42, v14

    invoke-direct/range {v38 .. v43}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v5, 0x0

    aput-object v7, v9, v5

    new-instance v6, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v5

    const/4 v15, 0x4

    invoke-direct {v7, v10, v14, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v10, 0x2

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v19, v14, v5

    aput-object v8, v14, v13

    const-string v40, "\u0001\u0001\u0001\u0001"

    const-string v41, "\u0011\u0018\u0004Q\u0011\u0018\u000c\t\u0003\u0008\t\u000b\u0008\u0013\u0008\u001b"

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v42, v14

    invoke-direct/range {v38 .. v43}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v6, v9, v13

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v10, 0x3

    invoke-direct {v6, v11, v8, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v19, v10, v7

    aput-object v18, v10, v13

    const-string v46, "\u0001\u0000\u0000"

    const-string v47, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\t\n\u0012"

    const/16 v49, 0x0

    move-object/from16 v44, v5

    move-object/from16 v45, v6

    move-object/from16 v48, v10

    invoke-direct/range {v44 .. v49}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x2

    aput-object v5, v9, v6

    new-instance v5, Lkawa/lang/SyntaxRule;

    new-instance v7, Lkawa/lang/SyntaxPattern;

    const/4 v8, 0x0

    new-array v10, v8, [Ljava/lang/Object;

    invoke-direct {v7, v12, v10, v6}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v19, v10, v8

    const-string v40, "\u0001\u0001"

    const-string v41, "\u0011\u0018\u0004\t\u0003\u0008\u000b"

    move-object/from16 v38, v5

    move-object/from16 v39, v7

    move-object/from16 v42, v10

    invoke-direct/range {v38 .. v43}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v6, 0x3

    aput-object v5, v9, v6

    const/4 v5, 0x5

    invoke-direct {v0, v4, v9, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v4, Lkawa/lib/prim_syntax;

    invoke-direct {v4}, Lkawa/lib/prim_syntax;-><init>()V

    sput-object v4, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-static {v3, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnsyntax:Lkawa/lang/Macro;

    invoke-static {v2, v1, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define:Lkawa/lang/Macro;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v1, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnprivate:Lkawa/lang/Macro;

    move-object/from16 v0, v26

    move-object/from16 v3, v37

    invoke-static {v3, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->define$Mnconstant:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, -0xfff

    move-object/from16 v2, v30

    const/4 v3, 0x1

    invoke-direct {v0, v4, v3, v2, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mnerror:Lgnu/expr/ModuleMethod;

    move-object/from16 v6, v35

    move-object/from16 v0, v36

    invoke-static {v6, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mn$Grexpression:Lkawa/lang/Macro;

    move-object/from16 v7, v33

    move-object/from16 v0, v34

    invoke-static {v7, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->syntax$Mnbody$Mn$Grexpression:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x1001

    const/4 v3, 0x2

    invoke-direct {v0, v4, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v3, "source-location"

    const-string v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:69"

    invoke-virtual {v0, v3, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, v32

    invoke-static {v5, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->if:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v5, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:89"

    invoke-virtual {v0, v3, v5}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v5, v31

    invoke-static {v5, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->try$Mncatch:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/kawa/lib/prim_syntax.scm:98"

    invoke-virtual {v0, v3, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, v23

    invoke-static {v1, v0, v4}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/prim_syntax;->letrec:Lkawa/lang/Macro;

    invoke-virtual {v4}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lkawa/lib/prim_syntax;->Lit14:Lkawa/lang/SyntaxPattern;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance p0, Lgnu/expr/IfExp;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/prim_syntax;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/prim_syntax;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lkawa/lib/prim_syntax;->Lit17:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    new-instance p0, Lgnu/expr/IfExp;

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit18:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lkawa/lib/prim_syntax;->Lit19:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v3

    sget-object v4, Lkawa/lib/prim_syntax;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v4, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/SyntaxForms;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    goto :goto_2

    :cond_1
    sget-object v1, Lkawa/lib/prim_syntax;->Lit21:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 82
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit22:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "too many expressions for \'if\'"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    move-object v0, v1

    :goto_0
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object v1, Lkawa/lib/prim_syntax;->Lit23:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit24:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "too few expressions for \'if\'"

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    move-object v0, v1

    :goto_1
    invoke-static {p0, v0}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 90
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit26:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit27:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lkawa/lib/prim_syntax;->Lit28:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lkawa/standard/try_catch;->rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static lambda3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 98
    new-instance v0, Lkawa/lib/prim_syntax$frame;

    invoke-direct {v0}, Lkawa/lib/prim_syntax$frame;-><init>()V

    .line 99
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v2, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 100
    invoke-static {v1, v2}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    sget-object v1, Lkawa/lib/prim_syntax;->Lit30:Lkawa/lang/SyntaxPattern;

    iget-object v2, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lkawa/lib/prim_syntax;->Lit31:Lkawa/lang/SyntaxTemplate;

    iget-object v2, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkawa/lib/prim_syntax$frame;->lambda4processBinding(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p0, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    invoke-static {p0}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    iput-object p0, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    .line 124
    iget-object p0, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    invoke-static {p0}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object p0

    iput-object p0, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    .line 125
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/prim_syntax;->Lit32:Lkawa/lang/SyntaxTemplate;

    iget-object v5, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lkawa/lib/prim_syntax$frame;->out$Mnbindings:Ljava/lang/Object;

    aput-object v5, v4, v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lkawa/lib/prim_syntax$frame;->out$Mninits:Ljava/lang/Object;

    aput-object v5, v1, v3

    sget-object v3, Lkawa/lib/prim_syntax;->Lit33:Lkawa/lang/SyntaxTemplate;

    iget-object v0, v0, Lkawa/lib/prim_syntax$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-virtual {v3, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v4, v0

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static varargs syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lkawa/standard/syntax_error;->error(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 89
    :cond_1
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    invoke-static {p2}, Lkawa/lib/prim_syntax;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 55
    aget-object v0, p2, p1

    array-length p1, p2

    sub-int/2addr p1, v1

    new-array v1, p1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-static {v0, v1}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

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

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 98
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 89
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 69
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
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

    .line 3
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
