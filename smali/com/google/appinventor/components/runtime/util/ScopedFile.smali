.class public Lcom/google/appinventor/components/runtime/util/ScopedFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "//"

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v0, 0x2

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v1, :cond_1

    .line 24
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 48
    check-cast p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v2, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz v0, :cond_3

    .line 54
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/FileScope;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;
    .locals 3

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScopedFile{scope="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ScopedFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
