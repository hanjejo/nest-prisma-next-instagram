export interface IProfile {
    id: number
    image: Buffer | null
    info: string | null
    website: string | null
    profile_name: string | null
    user_id: number
    gender: string | null
    birth_date: Date | null
}