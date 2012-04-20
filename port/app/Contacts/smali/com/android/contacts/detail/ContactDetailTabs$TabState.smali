.class public final enum Lcom/android/contacts/detail/ContactDetailTabs$TabState;
.super Ljava/lang/Enum;
.source "ContactDetailTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/detail/ContactDetailTabs$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/detail/ContactDetailTabs$TabState;

.field public static final enum TAB_ABOUT:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

.field public static final enum TAB_CALLLOG:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

.field public static final enum TAB_UPDATE:Lcom/android/contacts/detail/ContactDetailTabs$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const-string v1, "TAB_CALLLOG"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailTabs$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_CALLLOG:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    .line 22
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const-string v1, "TAB_ABOUT"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/detail/ContactDetailTabs$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_ABOUT:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    .line 23
    new-instance v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    const-string v1, "TAB_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/detail/ContactDetailTabs$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_UPDATE:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_CALLLOG:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_ABOUT:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->TAB_UPDATE:Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->$VALUES:[Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/detail/ContactDetailTabs$TabState;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/detail/ContactDetailTabs$TabState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/contacts/detail/ContactDetailTabs$TabState;->$VALUES:[Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    invoke-virtual {v0}, [Lcom/android/contacts/detail/ContactDetailTabs$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/detail/ContactDetailTabs$TabState;

    return-object v0
.end method
