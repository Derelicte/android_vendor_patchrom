.class public final Lcom/android/contacts/calllog/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static EMPTY:Lcom/android/contacts/calllog/ContactInfo;


# instance fields
.field public formattedNumber:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public normalizedNumber:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public photoId:J

.field public photoUri:Landroid/net/Uri;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    sput-object v0, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/android/contacts/calllog/ContactInfo;

    .line 60
    .local v0, other:Lcom/android/contacts/calllog/ContactInfo;
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 62
    :cond_5
    iget v3, p0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v4, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 63
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 64
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 65
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 66
    :cond_9
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 67
    :cond_a
    iget-wide v3, p0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    iget-wide v5, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 68
    :cond_b
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 47
    const/16 v0, 0x1f

    .line 48
    .local v0, prime:I
    const/4 v1, 0x1

    .line 49
    .local v1, result:I
    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 50
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 51
    return v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
