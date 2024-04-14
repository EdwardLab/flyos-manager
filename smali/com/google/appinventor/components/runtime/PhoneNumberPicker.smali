.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>PhoneNumber</code>: the contact\'s phone number </li>\n <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n"
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_CONTACTS"
    }
.end annotation


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

.field private static mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "name"

    const-string v1, "number"

    const-string v2, "person"

    const-string v3, "primary_email"

    .line 63
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 81
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    .locals 10

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "data1"

    .line 194
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 195
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "mimetype"

    .line 196
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const-string v6, "vnd.android.cursor.item/email_v2"

    .line 202
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 203
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 205
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Type mismatch: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " or "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContactPicker"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 215
    :cond_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumberList:Ljava/util/List;

    .line 216
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    .line 217
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    return-void

    :cond_3
    const-string p1, ""

    .line 220
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 173
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact_id"

    .line 174
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_name"

    .line 175
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "photo_thumb_uri"

    .line 176
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data1"

    .line 177
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 178
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    .locals 4

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    const/4 v0, 0x2

    .line 159
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 160
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    const/4 v0, 0x3

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 110
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "received intent is "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneNumberPicker"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "//com.android.contacts/data"

    .line 116
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 120
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameProjection()[Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    .line 121
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Contact name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emailAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contactPhotoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 140
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz p1, :cond_4

    .line 143
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, p3

    move-object p3, p1

    move-object p1, v6

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p3, p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p3, p1

    :goto_0
    :try_start_2
    const-string v1, "Exception in resultReturned"

    .line 136
    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x453

    .line 137
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p3, :cond_4

    .line 143
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception p2

    :goto_1
    if-eqz p1, :cond_2

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p3, :cond_3

    .line 143
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_3
    throw p2

    :cond_4
    :goto_2
    const-string p1, "The PhoneNumberPicker component have no \'After Picking\' return value."

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
