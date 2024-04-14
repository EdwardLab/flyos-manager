.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 1

    .line 57
    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Ljava/net/CookieManager;

    .line 59
    invoke-virtual {p0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/net/CookieStore;->removeAll()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;
    .locals 5

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    if-eqz p1, :cond_0

    .line 80
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 81
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x80

    .line 83
    :goto_1
    array-length v2, v0

    add-int/2addr p1, v2

    int-to-char p1, p1

    .line 84
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    array-length v4, p0

    add-int/2addr v2, v4

    new-array v2, v2, [B

    int-to-byte p1, p1

    .line 85
    aput-byte p1, v2, v1

    .line 86
    array-length p1, v0

    invoke-static {v0, v1, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    array-length p1, v0

    add-int/2addr p1, v3

    array-length v0, p0

    invoke-static {p0, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance p0, Landroid/nfc/NdefRecord;

    sget-object p1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v1, [B

    invoke-direct {p0, v3, p1, v0, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0
.end method

.method public static disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V
    .locals 0

    .line 75
    invoke-virtual {p1, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    return-void
.end method

.method public static enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 69
    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object p2

    .line 70
    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    invoke-direct {v1, v0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 71
    invoke-virtual {p1, p0, v1}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    return-void
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method

.method public static resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V
    .locals 6

    .line 94
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->ReadMode()Z

    move-result v0

    const-string v1, "android.nfc.extra.TAG"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    array-length v2, v0

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    const/4 v4, 0x0

    .line 110
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 111
    aget-object v5, v0, v4

    check-cast v5, Landroid/nfc/NdefMessage;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [B

    .line 118
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 119
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v5, v2, [Landroid/nfc/NdefRecord;

    aput-object v4, v5, v3

    invoke-direct {v0, v5}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    aput-object v0, v2, v3

    .line 122
    :cond_1
    aget-object v0, v2, v3

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 124
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/nfc/Tag;

    .line 129
    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/NearField;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/NearField;->TagRead(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/nfc/Tag;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->WriteType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TextToWrite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v0, v1

    .line 137
    :cond_3
    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 138
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TagWritten()V

    :cond_4
    return-void

    .line 142
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown intent "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "nearfield"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 4

    .line 150
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    .line 152
    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 155
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 158
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result p1

    if-ge p1, v0, :cond_1

    return v1

    .line 161
    :cond_1
    invoke-virtual {v2, p0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    return v3

    .line 164
    :cond_2
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 167
    :try_start_1
    invoke-virtual {p1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 168
    invoke-virtual {p1, p0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    :cond_3
    return v1
.end method
