.class Lcom/android/contacts/activities/TwelveKeyDialer$4;
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
    .line 1285
    iput-object p1, p0, Lcom/android/contacts/activities/TwelveKeyDialer$4;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$4;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-static {}, Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;->values()[Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    move-result-object v1

    aget-object v1, v1, p2

    #setter for: Lcom/android/contacts/activities/TwelveKeyDialer;->mFilterState:Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;
    invoke-static {v0, v1}, Lcom/android/contacts/activities/TwelveKeyDialer;->access$1302(Lcom/android/contacts/activities/TwelveKeyDialer;Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;)Lcom/android/contacts/activities/TwelveKeyDialer$FilterState;

    .line 1289
    iget-object v0, p0, Lcom/android/contacts/activities/TwelveKeyDialer$4;->this$0:Lcom/android/contacts/activities/TwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/contacts/activities/TwelveKeyDialer;->startQuery()V

    .line 1290
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1291
    return-void
.end method
