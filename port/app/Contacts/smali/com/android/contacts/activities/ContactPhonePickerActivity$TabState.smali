.class public final enum Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;
.super Ljava/lang/Enum;
.source "ContactPhonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactPhonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

.field public static final enum ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

.field public static final enum FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

.field public static final enum GROUPS:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

.field public static final enum RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    new-instance v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    .line 275
    new-instance v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const-string v1, "GROUPS"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->GROUPS:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    .line 276
    new-instance v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    .line 277
    new-instance v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    .line 273
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->RECENT:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->GROUPS:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->ALL:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->FAVORITES:Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->$VALUES:[Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

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
    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;
    .locals 1
    .parameter

    .prologue
    .line 273
    const-class v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->$VALUES:[Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    invoke-virtual {v0}, [Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/activities/ContactPhonePickerActivity$TabState;

    return-object v0
.end method
