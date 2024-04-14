.class public Lgnu/kawa/xml/MakeUnescapedData;
.super Lgnu/mapping/Procedure1;
.source "MakeUnescapedData.java"


# static fields
.field public static final unescapedData:Lgnu/kawa/xml/MakeUnescapedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lgnu/kawa/xml/MakeUnescapedData;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeUnescapedData;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeUnescapedData;->unescapedData:Lgnu/kawa/xml/MakeUnescapedData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.xml.CompileXmlFunctions:validateApplyMakeUnescapedData"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xml/MakeUnescapedData;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    new-instance v0, Lgnu/lists/UnescapedData;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Lgnu/lists/UnescapedData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
