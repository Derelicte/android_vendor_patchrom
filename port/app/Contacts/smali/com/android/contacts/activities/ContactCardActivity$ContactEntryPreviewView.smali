.class public Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;
.super Ljava/lang/Object;
.source "ContactCardActivity.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactEntryPreviewView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;",
        ">;"
    }
.end annotation


# instance fields
.field public mChecked:Z

.field public mData:Ljava/lang/String;

.field public mExtra:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mimetype:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/activities/ContactCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->shouldCollapseWith(Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->collapseWith(Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 429
    if-nez p1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->mData:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 410
    check-cast p1, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;->shouldCollapseWith(Lcom/android/contacts/activities/ContactCardActivity$ContactEntryPreviewView;)Z

    move-result v0

    return v0
.end method
