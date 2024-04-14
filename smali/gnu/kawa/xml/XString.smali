.class public Lgnu/kawa/xml/XString;
.super Ljava/lang/Object;
.source "XString.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field public text:Ljava/lang/String;

.field private type:Lgnu/kawa/xml/XStringType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lgnu/kawa/xml/XStringType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lgnu/kawa/xml/XString;->type:Lgnu/kawa/xml/XStringType;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 21
    iget-object v0, p0, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getStringType()Lgnu/kawa/xml/XStringType;
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/kawa/xml/XString;->type:Lgnu/kawa/xml/XStringType;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 23
    iget-object v0, p0, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/kawa/xml/XString;->text:Ljava/lang/String;

    return-object v0
.end method
