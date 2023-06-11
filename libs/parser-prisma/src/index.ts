import {AzimuttSchema} from "@azimutt/database-types";
import {formatSchema, parseSchema} from "./prisma";

export const prisma = {
    name: 'Prisma',
    parse: (content: string): AzimuttSchema => formatSchema(parseSchema(content))
}
