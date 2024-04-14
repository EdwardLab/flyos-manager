.class public Lgnu/kawa/slib/srfi2;
.super Lgnu/expr/ModuleBody;
.source "srfi2.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi2.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi2.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi2.scm\n*L\n1#1,23:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi2;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxPattern;

.field static final Lit10:Lkawa/lang/SyntaxTemplate;

.field static final Lit11:Lkawa/lang/SyntaxPattern;

.field static final Lit12:Lkawa/lang/SyntaxTemplate;

.field static final Lit13:Lkawa/lang/SyntaxPattern;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxPattern;

.field static final Lit16:Lkawa/lang/SyntaxTemplate;

.field static final Lit17:Lkawa/lang/SyntaxTemplate;

.field static final Lit18:Lkawa/lang/SyntaxTemplate;

.field static final Lit19:Lkawa/lang/SyntaxPattern;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lkawa/lang/SyntaxTemplate;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxPattern;

.field static final Lit6:Lkawa/lang/SyntaxTemplate;

.field static final Lit7:Lkawa/lang/SyntaxPattern;

.field static final Lit8:Lkawa/lang/SyntaxTemplate;

.field static final Lit9:Lkawa/lang/SyntaxTemplate;

.field public static final and$Mnlet$St:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "and"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "\u0001"

    const-string v7, "\u0018\u0004"

    invoke-direct {v2, v5, v7, v4, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxPattern;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007\u000c\u0008\u0008"

    invoke-direct {v2, v5, v4, v3}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "\u0001\u0001\u0000"

    const-string v7, "\u000b"

    invoke-direct {v2, v5, v7, v4, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const-string v8, "\u0011\u0018\u0004\t\u000b\u0008\t\u0003\u0008\u0012"

    invoke-direct {v2, v5, v8, v4, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-direct {v2, v5, v7, v4, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxPattern;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v9, "\u000c\u0007\u001c\u000c\u000f\u0013\u0008"

    const/4 v10, 0x3

    invoke-direct {v2, v9, v4, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-direct {v2, v5, v8, v4, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v2, Lkawa/lang/SyntaxPattern;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0013\u0008"

    invoke-direct {v2, v5, v4, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    new-instance v2, Lkawa/lang/SyntaxTemplate;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v1, v5, v3

    const-string v1, "\u0001\u0001\u0001\u0000"

    const-string v8, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u0011\u0018\u000c\t\u000b\u0008\t\u0003\u0008\u001a"

    invoke-direct {v2, v1, v8, v5, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u001b\u0008"

    const/4 v8, 0x4

    invoke-direct {v1, v5, v2, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v5, "\u0001\u0001"

    invoke-direct {v1, v5, v7, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v1, v5, v7, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v1, v5, v7, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v9, "\u000c\u0007\u001c\u000c\u000f\u0008\u0008"

    invoke-direct {v1, v9, v2, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {v1, v5, v7, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v5, "\u000c\u0007,\u001c\u000c\u000f\u0008\u0008\u0008"

    invoke-direct {v1, v5, v2, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    new-instance v1, Lkawa/lang/SyntaxTemplate;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const-string v0, "\u0001\u0001\u0001"

    const-string v4, "\u0011\u0018\u0004)\u0008\t\u000b\u0008\u0013\u0008\u000b"

    invoke-direct {v1, v0, v4, v2, v6}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u000c\u0007<,\u000c\u000f\u000c\u0017\u0008\u0008\u0008"

    invoke-direct {v0, v2, v1, v10}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v4, "begin"

    invoke-direct {v2, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    aput-object v2, v1, v6

    const-string v2, "\u0001\u0003\u0001\u0000"

    const-string v4, "\t\u0003\u0008\u0011\r\u000b\u0008\u0008\u0011\u0018\u0004\t\u0013\u001a"

    invoke-direct {v0, v2, v4, v1, v3}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "\u000c\u0007,\r\u000f\u0008\u0008\u0008\u000c\u0017\u001b"

    invoke-direct {v0, v2, v1, v8}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "and-let*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi2;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/kawa/slib/srfi2;

    invoke-direct {v1}, Lgnu/kawa/slib/srfi2;-><init>()V

    sput-object v1, Lgnu/kawa/slib/srfi2;->$instance:Lgnu/kawa/slib/srfi2;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x0

    const/16 v5, 0x1001

    invoke-direct {v2, v1, v3, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    invoke-static {v0, v2, v1}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi2;->and$Mnlet$St:Lkawa/lang/Macro;

    invoke-virtual {v1}, Lgnu/expr/ModuleBody;->run()V

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

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit1:Lkawa/lang/SyntaxPattern;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit3:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :cond_1
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit5:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit6:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit7:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "expected a variable name"

    if-eqz v1, :cond_5

    .line 10
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit8:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 11
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit9:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_2

    .line 12
    :cond_3
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit10:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast v4, [Ljava/lang/Object;

    goto :goto_0

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    move-object v4, v0

    :goto_0
    invoke-static {p0, v4}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit11:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit12:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_6
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit13:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_7
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit15:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit16:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkawa/lib/std_syntax;->isIdentifier(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 20
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit17:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    .line 21
    :cond_8
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit18:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    check-cast v4, [Ljava/lang/Object;

    goto :goto_1

    :cond_9
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    move-object v4, v0

    :goto_1
    invoke-static {p0, v4}, Lkawa/lib/prim_syntax;->syntaxError(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    goto :goto_2

    :cond_a
    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit19:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object p0

    sget-object v1, Lgnu/kawa/slib/srfi2;->Lit20:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v1, v0, p0}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_b
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lgnu/kawa/slib/srfi2;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    return-void
.end method
