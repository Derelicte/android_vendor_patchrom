.class Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;
.super Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAction"
.end annotation


# instance fields
.field private callIntent:Landroid/content/Intent;

.field private innerContext:Landroid/content/Context;

.field private smsIntent:Landroid/content/Intent;

.field private telnumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 1043
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0, p1, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 1044
    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->telnumber:Ljava/lang/String;

    .line 1045
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->innerContext:Landroid/content/Context;

    .line 1046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->callIntent:Landroid/content/Intent;

    .line 1047
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    invoke-static {v2, p3, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->smsIntent:Landroid/content/Intent;

    .line 1048
    return-void
.end method


# virtual methods
.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->innerContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->innerContext:Landroid/content/Context;

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->smsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->telnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$PhoneAction;->callIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    const-string v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method
