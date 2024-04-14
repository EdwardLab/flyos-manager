.class public Lkawa/standard/syntax_rules;
.super Lkawa/lang/Syntax;
.source "syntax_rules.java"


# static fields
.field public static final syntax_rules:Lkawa/standard/syntax_rules;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/syntax_rules;

    invoke-direct {v0}, Lkawa/standard/syntax_rules;-><init>()V

    sput-object v0, Lkawa/standard/syntax_rules;->syntax_rules:Lkawa/standard/syntax_rules;

    const-string v1, "syntax-rules"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/syntax_rules;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lkawa/lang/SyntaxPattern;->getLiteralsList(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v0

    .line 19
    new-instance v1, Lkawa/lang/SyntaxRules;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v0, p1, p2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 21
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
