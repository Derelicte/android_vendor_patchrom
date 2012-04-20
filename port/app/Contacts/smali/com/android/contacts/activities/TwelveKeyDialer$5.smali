.class Lcom/android/contacts/activities/TwelveKeyDialer$5;
.super Ljava/lang/Object;
.source "TwelveKeyDialer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/TwelveKeyDialer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/TwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/activities/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    #getter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    invoke-static {v2}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1300(Lcom/android/contacts/activities/TwelveKeyDialer;)Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->getFilter()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 1305
    return-void
.end method
