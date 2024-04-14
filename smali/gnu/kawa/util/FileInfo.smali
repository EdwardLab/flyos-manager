.class Lgnu/kawa/util/FileInfo;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static final childPat:Ljava/util/regex/Pattern;

.field static fileMap:Ljava/util/Hashtable;

.field static final linkPat:Ljava/util/regex/Pattern;

.field static final parentPat:Ljava/util/regex/Pattern;


# instance fields
.field beforeNavbarText:Ljava/lang/StringBuffer;

.field bout:Ljava/io/ByteArrayOutputStream;

.field childLinkText:[Ljava/lang/String;

.field cout:Lgnu/mapping/OutPort;

.field file:Ljava/io/File;

.field fin:Ljava/io/FileInputStream;

.field in:Lgnu/mapping/InPort;

.field nchildren:I

.field newNavbarText:Ljava/lang/StringBuffer;

.field oldNavbarText:Ljava/lang/StringBuffer;

.field parent:Lgnu/kawa/util/FileInfo;

.field parentName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field scanned:Z

.field writeNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    const-string v0, "<a .*</a>"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    const-string v0, "<ul[^>]* parent=[\'\"]([^\'\"]*)[\'\"]"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    const-string v0, " href=[\'\"]([^\'\"]*)[\'\"]"

    .line 96
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/util/FileInfo;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lgnu/kawa/util/FileInfo;

    invoke-direct {v1}, Lgnu/kawa/util/FileInfo;-><init>()V

    .line 87
    iput-object p0, v1, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    .line 88
    sget-object p0, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public scan()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    .line 103
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    .line 104
    new-instance v1, Lgnu/mapping/InPort;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    .line 107
    iget-boolean v1, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    .line 110
    new-instance v1, Lgnu/mapping/OutPort;

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    .line 115
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    :cond_2
    :goto_0
    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v5}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_a

    const-string v6, "<!--end-generated-navbar-->"

    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 161
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 162
    iput v0, p0, Lgnu/kawa/util/FileInfo;->nchildren:I

    .line 163
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 164
    iput-object v2, p0, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    .line 165
    iget-boolean v0, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v0}, Lgnu/mapping/InPort;->close()V

    .line 167
    :cond_4
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 170
    invoke-static {v0}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 172
    iput-object v0, p0, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    :cond_5
    return-void

    .line 128
    :cond_6
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_9

    const-string v6, "<!--end-children-toc-->"

    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    .line 136
    :cond_7
    sget-object v6, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 139
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_8
    sget-object v6, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 144
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    :cond_9
    :goto_2
    const-string v6, "<!--start-children-toc-->"

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    const-string v6, "<!--start-generated-navbar-->"

    .line 153
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_b

    const/4 v3, 0x1

    .line 158
    :cond_b
    :goto_3
    iget-boolean v6, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 159
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v6, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public write()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p0

    .line 237
    :goto_0
    iget-object v1, v1, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v2, "<!--start-generated-navbar-->"

    invoke-virtual {v1, v2}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 244
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v1, "<!--end-generated-navbar-->"

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 248
    :goto_1
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v0}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v0}, Lgnu/mapping/InPort;->close()V

    .line 255
    iget-object v0, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fixup "

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - no change"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 261
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 263
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - updated"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 251
    :cond_2
    iget-object v1, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v1, v0}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeLinks(ILjava/lang/StringBuffer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    move v2, p1

    move-object v1, v0

    move-object v0, p0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 184
    iget-object v1, v0, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "<!--start-children-toc-->\n"

    .line 187
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-nez p1, :cond_2

    .line 188
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "<ul parent=\""

    .line 190
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\">\n"

    .line 192
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v2, "<ul>\n"

    .line 195
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :goto_1
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    .line 197
    iget-object v3, v0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 198
    :goto_2
    iget v6, v0, Lgnu/kawa/util/FileInfo;->nchildren:I

    if-ge v5, v6, :cond_8

    .line 200
    iget-object v6, v0, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-lez p1, :cond_5

    .line 205
    sget-object v7, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 206
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    const/4 v7, 0x1

    .line 207
    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-virtual {v3, v8}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " href=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x23

    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_3

    .line 212
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 213
    :cond_3
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3, v8}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v9}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v8

    if-ne v8, v1, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_6

    if-le p1, v7, :cond_6

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :cond_6
    const-string v7, "<li>"

    .line 219
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v8, :cond_7

    const/16 v6, 0xa

    .line 223
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, p1, -0x1

    .line 224
    invoke-virtual {p0, v6, p2}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    :cond_7
    const-string v6, "</li>\n"

    .line 226
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_8
    const-string v0, "</ul>\n"

    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_9

    const-string p1, "<!--end-children-toc-->\n"

    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-void
.end method
